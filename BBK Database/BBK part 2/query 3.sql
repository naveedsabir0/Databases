-- A total of spare parts used for a given month, showing how many of each type and total and average cost of the repairs --
USE BBK;

SELECT P.Name AS Part_Type, COUNT(PARTID) AS Total_Parts,
AVG(P.COST) AS Average_Cost,
SUM(P.COST) AS Total_Cost,
SUM(P.QUANTITY) AS Amount_Used,
R.REPAIRDATE
FROM PART AS P, REPAIR AS R
WHERE REPAIRDATE = '1994-06-09'
GROUP BY P.PARTID;