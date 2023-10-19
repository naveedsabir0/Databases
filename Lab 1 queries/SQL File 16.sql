use stockexchange;

#15.	Which currencies have the word "British" in them?
SELECT * FROM currencies WHERE name LIKE '%British%';
commit;