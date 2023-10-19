use stockexchange;

#19.	Which trade ids took place in this calendar year (i.e. since 1 January)?
SELECT trade_id
FROM trades
WHERE YEAR(transaction_time) = YEAR(CURDATE()) AND transaction_time >= DATE(CONCAT(YEAR(CURDATE()), '-01-01'));

commit;