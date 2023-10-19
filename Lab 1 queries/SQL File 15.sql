use stockexchange;

#14.	What are the broker ids for the brokers working at stock exchange 2? Sort the broker ids into ascending order.
SELECT broker_id FROM broker_stock_ex WHERE stock_ex_id = 2;
commit;