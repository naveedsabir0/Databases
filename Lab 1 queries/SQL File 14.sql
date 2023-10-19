use stockexchange;

#13.	List the trade ids & price totals of the trades which have taken place at the stock ex id of 3 and share_amount greater than 20000.
SELECT trade_id and price_total FROM trades WHERE stock_ex_id = 3 and share_amount > 20000;
commit;