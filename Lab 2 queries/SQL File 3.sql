#Modify your previous query so that it shows the names of stock exchanges where no trades have been made
use stockexchange;

SELECT se.name
FROM stock_exchanges se
LEFT JOIN trades t ON se.stock_ex_id = t.stock_ex_id
WHERE t.stock_ex_id IS NULL;
