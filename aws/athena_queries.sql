!-- Query to get the top 5 drivers with the most points in the season so far

SELECT FullName, SUM(Points) AS TotalPoints
FROM f1_pipeline_db.processed
GROUP BY FullName
ORDER BY TotalPoints DESC
LIMIT 5;

!-- Teams ordered by total points in the season so far
SELECT TeamName, SUM(Points) AS TotalPoints
FROM f1_pipeline_db.processed
GROUP BY TeamName
ORDER BY TotalPoints DESC;

!-- Top drivers by Positions Gained in the season so far
SELECT FullName, SUM(PositionGainLoss) AS TotalPositionGain
FROM f1_pipeline_db.processed
GROUP BY FullName
ORDER BY TotalPositionGain DESC !--Or ASC for losses;
LIMIT 5;

!-- Get drivers that have won a race this season
SELECT FullName, COUNT(*) AS Wins
FROM f1_pipeline_db.processed
WHERE "Gap to Winner" = 0
GROUP BY FullName
ORDER BY Wins DESC
LIMIT 5;

! -- Get top 5 drivers by average gap to winner in the season so far
SELECT FullName, ROUND(AVG(CAST("Gap to Winner" AS DOUBLE)), 3) AS AvgGapToWinner
FROM f1_pipeline_db.processed
WHERE "Position" != 1
GROUP BY FullName
ORDER BY AvgGapToWinner ASC
LIMIT 5;