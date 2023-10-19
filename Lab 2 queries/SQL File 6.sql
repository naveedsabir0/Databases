#Modify your previous query to show cities which don't have a stock exchange.
use stockexchange;

SELECT DISTINCT p.city
FROM places p
LEFT JOIN stock_exchanges se ON p.place_id = se.place_id
WHERE se.place_id IS NULL;
