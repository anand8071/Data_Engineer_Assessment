SELECT * FROM solution_problem_2.solutions_problem_2;
SELECT DATE(date_time) AS incident_date, COUNT(*) AS incidents_with_id
FROM solution_problem_2.solutions_problem_2
WHERE instance_id IS NOT NULL
GROUP BY incident_date;
--  percentage of incidents have a non-null id?
SELECT (3357 /(COUNT(*))) * 100 AS percentage_with_id 
FROM solution_problem_2.solutions_problem_2;

-- The time is in UTC, so convert that into IST. 
SELECT instance_id,
       DATE_FORMAT(CONVERT_TZ(date_time, '+00:00', '+05:30'), '%Y-%m-%d %H:%i:%s') AS incident_date_ist
FROM solution_problem_2.solutions_problem_2
WHERE instance_id IS NOT NULL;
-- What time of the day does the incident_id percentage is lower? 

SET time_zone = '+00:00';

SELECT hour_of_day, percentage_with_id
FROM (
    SELECT HOUR(CONVERT_TZ(date_time, '+00:00', '+05:30')) AS hour_of_day,
           COUNT(*) AS incidents_with_id,
           (COUNT(*) / SUM(COUNT(*)) OVER ()) * 100 AS percentage_with_id
    FROM solution_problem_2.solutions_problem_2
    WHERE instance_id IS NOT NULL
    GROUP BY hour_of_day
) AS subquery
ORDER BY percentage_with_id
LIMIT 1;               
--  time of day with the lowest percentage of incidents having an incident_id is 2 (2 AM in IST) 24hrs format ,
--  with a percentage of 0.3735%.
