#Write a query which shows the names of cities which have a stock exchange. HINT: Use the stock exchanges and place tables.

use stockexchange;
SELECT DISTINCT p.city
FROM stock_exchanges se
JOIN places p ON p.place_id = se.place_id;
