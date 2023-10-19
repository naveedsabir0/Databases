-- A list of all bikes accepted for repair past, present or for a given month--

-- Repair before given date --
SELECT * FROM REPAIR
WHERE DATE <= '1994-6-9';

-- Repair after given date --
SELECT * FROM REPAIR 
WHERE DATE > '1994-6-9';

-- Repair on given date --
SELECT * FROM REPAIR 
WHERE DATE = '1994-6-9'