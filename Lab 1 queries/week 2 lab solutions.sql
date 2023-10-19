#Week 2 lab 3 solutions

-- Question 1

SELECT c.name,
p.city,
p.country
FROM companies c
INNER JOIN
places p
ON p.place_id = c.place_id;

-- Question 2

SELECT c.name,
s.name
FROM companies c
INNER JOIN
stock_exchanges s
ON s.place_id = c.place_id;


-- Question 3

SELECT s.share_id,
c.name
FROM shares s
INNER JOIN
currencies c
ON s.currency_id = c.currency_id;


-- Question 4

SELECT s.share_id,
c.name
FROM shares s
RIGHT OUTER JOIN
currencies c
ON s.currency_id = c.currency_id;


-- Question 5

SELECT c.name
FROM shares s
RIGHT OUTER JOIN
currencies c
ON s.currency_id = c.currency_id
WHERE share_id IS NULL;


-- Question 6
SELECT
co.name AS Company_Name,
cur.name AS Currency
FROM
companies co
LEFT OUTER JOIN
shares sh
ON
co.company_id=sh.company_id
LEFT JOIN
currencies cur
ON
sh.currency_id=cur.currency_id
;

SELECT co.name,
cu.name
FROM companies co
INNER JOIN
shares s
ON s.company_id = co.company_id
INNER JOIN
currencies cu
ON cu.currency_id = s.currency_id;

-- Question 7

SELECT b.first_name||' '||b.last_name AS broker,
s.name
FROM brokers b
INNER JOIN
broker_stock_ex bse
ON b.broker_id = bse.broker_id
INNER JOIN
stock_exchanges s
ON bse.stock_ex_id = s.stock_ex_id;