!-- Query to get the top 5 drivers with the most points in the season so far

SELECT FullName, SUM(Points) AS TotalPoints
FROM f1_pipeline_db.processed
GROUP BY FullName
ORDER BY TotalPoints DESC
LIMIT 5;