USE gaming_data;

-- Q1) Extract P_ID,Dev_ID,PName and Difficulty_level of all players 
-- at level 0

	SELECT 
    pd.P_ID, pd.PName, ld.Dev_ID, ld.Difficulty
FROM
    player_details pd
        JOIN
    level_details ld ON pd.P_ID = ld.P_ID
WHERE
    ld.`Level` = 0;



    
-- Q2) Find the total number of stages crossed at each difficulty level for Level 2 with players.
SELECT 
    Difficulty, SUM(Stages_crossed) as `Sum of Stages Crossed`
FROM
    level_details
WHERE
    `level` = 2
GROUP BY Difficulty;





-- Q3) Find `Level1_code`wise average `Kill_Count` where `lives_earned` is 2, and at least 3 stages are crossed.
-- using `zm_series` devices. Arrange the result in decreasing order of the total number of stages crossed.

SELECT 
    pd.L1_Code, AVG(ld.Kill_Count) as Avg_Kill_Count, COUNT(ld.Stages_crossed) as Total_Stages_crossed
FROM
    player_details pd
        JOIN
    level_details ld ON pd.P_ID = ld.P_ID
WHERE
    ld.Lives_Earned = 2 AND ld.Stages_crossed >= 3
        AND ld.Dev_ID LIKE 'zm_%'
GROUP BY pd.L1_Code
HAVING Total_Stages_crossed >= 3
ORDER BY Total_Stages_crossed DESC;




-- Q4) Extract P_ID and the total number of unique dates for those players 
-- who have played games on multiple days.
SELECT 
    P_ID, COUNT(DISTINCT (start_time)) AS `days played`
FROM
    level_details
GROUP BY P_ID
HAVING `days played` > 1;





-- Q5) Find P_ID and level wise sum of kill_counts where kill_count
-- is greater than avg kill count for the Medium difficulty.
SELECT 
    P_ID, `Level`, SUM(Kill_Count) as `Total Kills`
FROM
    level_details
GROUP BY P_ID , `Level`
HAVING SUM(Kill_Count) > (SELECT 
        AVG(Kill_Count)
    FROM
        level_details
    WHERE
        Difficulty = 'Medium');
        
        
        
        
-- Q6)  Find Level and its corresponding Level code wise sum of lives earned 
-- excluding level 0. Arrange in asecending order of level.
SELECT 
    ld.`Level`,
    pd.L1_Code,
    pd.L2_Code,
    SUM(ld.Lives_Earned) AS `Total Lives Earned`
FROM
    player_details pd
        JOIN
    level_details ld ON pd.P_ID = ld.P_ID
WHERE
    ld.`Level` > 0
GROUP BY ld.`Level` , pd.L1_code , pd.L2_Code
ORDER BY `Level` ASC;




-- Q7) Find Top 3 score based on each dev_id and Rank them in increasing order
-- using Row_Number. Display difficulty as well. 
WITH TopScores AS (
SELECT
	Dev_ID, Score, 
	Difficulty, 
	ROW_NUMBER() OVER (PARTITION BY Dev_ID ORDER BY Score DESC) AS `Rank`
    FROM level_details)
    
SELECT 
Dev_ID, 
Score, 
Difficulty
FROM TopScores
WHERE `Rank` <= 3
ORDER BY Dev_id, `Rank`;




-- Q8) Find first_login datetime for each device id
SELECT 
    Dev_id, MIN(start_time) AS first_login
FROM
    level_details
GROUP BY Dev_id;




-- Q9) Find Top 5 score based on each difficulty level and Rank them in 
-- increasing order using Rank. Display dev_id as well.
WITH TopScores AS (
SELECT
	Difficulty,
	Dev_ID, Score,
	ROW_NUMBER() OVER (PARTITION BY Difficulty ORDER BY Score DESC) AS `Rank`
    FROM level_details)
    
SELECT 
Difficulty,
Score, 
Dev_ID

FROM TopScores
WHERE `Rank` <= 5
ORDER BY Difficulty, `Rank`;




-- Q10) Find the device ID that is first logged in(based on start_datetime) 
-- for each player(p_id). Output should contain player id, device id and 
-- first login datetime.
SELECT 
    ld.P_ID, ld.Dev_ID, ld.start_time AS first_login_datetime
FROM
    level_details ld
        JOIN
    (SELECT 
        P_ID, MIN(start_time) AS first_login_time
    FROM
        level_details
    GROUP BY P_ID) AS min_start_time ON ld.P_ID = min_start_time.P_ID
        AND ld.start_time = min_start_time.first_login_time;


-- Q11) For each player and date, how many kill_count played so far by the player. That is, the total number of games played -- by the player until that date.
-- a) window function
SELECT P_ID,
       start_date,
       SUM(Kill_Count) OVER (PARTITION BY P_ID ORDER BY start_date) AS total_kill_count
FROM (
    SELECT P_ID,
           DATE(start_time) AS start_date,
           Kill_Count
    FROM level_details
) AS subquery;

-- b) without window function
SELECT ld.P_ID,
       DATE(ld.start_time) AS start_date,
       SUM(ld.Kill_Count) AS total_kill_count
FROM level_details ld
JOIN (
    SELECT P_ID,
           DATE(start_time) AS start_date,
           MIN(start_time) AS min_start_time
    FROM level_details
    GROUP BY P_ID, DATE(start_time)
) AS min_start
ON ld.P_ID = min_start.P_ID
AND DATE(ld.start_time) <= min_start.start_date
GROUP BY ld.P_ID, DATE(ld.start_time);





-- Q12) Find the cumulative sum of an stages crossed over a start_datetime 
-- for each player id but exclude the most recent start_datetime
SELECT 
    ld.P_ID,
    ld.start_time,
    SUM(ld.Stages_crossed) AS cumulative_stages_crossed
FROM
    level_details ld
        LEFT JOIN
    level_details ld_recent ON ld.P_ID = ld_recent.P_ID
        AND ld.start_time < ld_recent.start_time
        LEFT JOIN
    (SELECT 
        P_ID, MAX(start_time) AS max_start_time
    FROM
        level_details
    GROUP BY P_ID) AS max_start ON ld.P_ID = max_start.P_ID
        AND ld.start_time = max_start.max_start_time
WHERE
    max_start.max_start_time IS NULL
GROUP BY ld.P_ID , ld.start_time;





-- Q13) Extract top 3 highest sum of score for each device id and the corresponding player_id
SELECT Dev_id, P_ID, total_score
FROM (
    SELECT Dev_id, P_ID, total_score,
           ROW_NUMBER() OVER (PARTITION BY Dev_id ORDER BY total_score DESC) AS `rank`
    FROM (
        SELECT Dev_id, P_ID, SUM(score) AS total_score
        FROM level_details
        GROUP BY Dev_id, P_ID
    ) AS sums
) AS ranked_sums
WHERE `rank` <= 3;





-- Q14) Find players who scored more than 50% of the avg score scored by sum of 
-- scores for each player_id
select P_ID, sum(Score) as `Total Score`
from level_details
group by P_ID
having `Total Score` > 0.5 * (select avg(Score) from level_details);




-- Q15) Create a stored procedure to find top n headshots_count based on each dev_id and Rank them in increasing order
-- using Row_Number. Display difficulty as well.
DELIMITER //

CREATE PROCEDURE TopNHeadshotsByDevice(IN n INT)
BEGIN
    SELECT dev_id, difficulty, headshots_count, `RANK`
    FROM (
        SELECT dev_id, difficulty, headshots_count,
               ROW_NUMBER() OVER (PARTITION BY dev_id ORDER BY headshots_count) AS `RANK`
        FROM level_details
    ) AS ranked_headshots
    WHERE `RANK` <= n;
END//

DELIMITER ;


CALL TopNHeadshotsByDevice(3);
