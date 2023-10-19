-- A total of the amount of time each month each volunteer spends on repairs and the average time taken for each repair by each volunteer --
USE BBK;

SELECT FV.VOLUNTEERID AS Volunteer, R.REPAIRID AS Repair,
SUM(DURATION) AS Total_Hours , AVG(FV.DURATION) AS Average_Time, MONTH(R.REPAIRDATE) AS Given_Month, R.REPAIRDATE AS Repair_Date
FROM REPAIR AS R, FAULT_VOLUNTEER AS FV
WHERE MONTH(R.REPAIRDATE)
GROUP BY FV.VOLUNTEERID;