-- A list of all cyclists who attended classes showing which class they attended and when, filterable by month or volunteers --

USE BBK;
-- FILERABLE BY MONTH
SELECT CYCLISTID AS Cyclist,C.CLASSID AS Class_Attended,C.DATE AS Class_Date, Month(C.DATE) AS Given_Month
FROM CYCLIST_CLASS, CLASS as C, VOLUNTEER as V;