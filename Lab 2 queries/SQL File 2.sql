#Write a query which shows the names of stock exchanges where some trades have been made. HINT: Use the stock exchanges and trades tables

SELECT DISTINCT se.name
FROM stock_exchanges se
JOIN trades t ON se.stock_ex_id = t.stock_ex_id;

