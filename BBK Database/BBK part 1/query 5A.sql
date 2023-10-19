-- A list of all cyclists who attended classes showing which class they attended and when, filterable by month or volunteers --

USE BBK;
-- FILERABLE BY VOLUNTEERS
SELECT CYCLISTID AS Cyclist, C.CLASSID AS Class_Attended, DATE AS Class_Date, V.VOLUNTEERID AS Volunteer
FROM CYCLIST_CLASS, CLASS as C, VOLUNTEER AS V;

