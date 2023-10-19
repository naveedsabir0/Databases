-- A list of all bikes accepted for repair past, present or for a given month--
USE BBK;
-- Repair before given date --
SELECT BIKEID AS BikeIDs_For_Repair_PAST FROM REPAIR
WHERE REPAIRDATE <= '1994-6-9';

-- Repair after given date --
SELECT BIKEID AS BikeIDs_For_Repair_FUTURE FROM REPAIR 
WHERE REPAIRDATE > '1994-6-9';

-- Repair on given date --
SELECT BIKEID AS BikeIDs_For_Repair_PRESENT FROM REPAIR 
WHERE REPAIRDATE = '1994-6-9';