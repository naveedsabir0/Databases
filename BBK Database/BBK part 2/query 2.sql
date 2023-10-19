-- A list of spare parts used for a given month and the cost of each part --
USE BBK;
SELECT P.PARTID AS Part_For_Repair, P.REPAIRID AS Repair, P.COST AS Cost_of_part, R.REPAIRDATE AS Repair_Date
FROM PART AS P, REPAIR AS R
WHERE month(R.REPAIRDATE);

