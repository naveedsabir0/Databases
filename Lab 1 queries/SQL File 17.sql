use stockexchange;

#16.	Which stock exchanges contain "SE" in their symbol. What are their full names? Sort them into descending order.
SELECT name FROM stock_exchanges WHERE symbol LIKE '%SE%' ORDER BY name DESC;
commit;