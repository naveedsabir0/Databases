-- A count of how many cyclists attended each class in a given month, optionally grouped by volunteer who delivered the class --
USE BBK;

SELECT COUNT(CA.CYCLISTID) AS Amount_Of_Cyclists, CA.CLASSID AS Class, V.VOLUNTEERID AS Volunteer, C.DATE AS Class_Date
FROM CYCLIST_CLASS AS CA, CLASS AS C, VOLUNTEER AS V
WHERE month(C.DATE)=2
GROUP BY V.VOLUNTEERID;