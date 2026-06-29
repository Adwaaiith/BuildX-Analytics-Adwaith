--Query 1:Display all boundary deliveries
SELECT batter,batting_team, batter_runs
FROM cleaned_dataset
WHERE batter_runs IN (4,6);

--Query 2:Total runs by batting team
SELECT batting_team,SUM(total_runs) AS total_runs
FROM cleaned_dataset
GROUP BY batting_team
ORDER BY total_runs DESC;

--Query 3:Average runs by batter
SELECT batter,AVG(batter_runs) AS average_runs
FROM cleaned_dataset
GROUP BY batter
ORDER BY average_runs DESC;

--Query 4:Teams with more than 20,000 runs
SELECT batting_team,SUM(total_runs) AS total_runs
FROM cleaned_dataset
GROUP BY batting_team
HAVING SUM(total_runs)>20000;

--Query 5:Batters whose names start with 'V'
SELECT batter
FROM cleaned_dataset
WHERE batter LIKE 'V%';

-- Query 6: Top run scorers by team
SELECT batting_team,batter,SUM(batter_runs) AS runs
FROM cleaned_dataset
GROUP BY batting_team, batter
HAVING SUM(batter_runs)>500
ORDER BY runs DESC;