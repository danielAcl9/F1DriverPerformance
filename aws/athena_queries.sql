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