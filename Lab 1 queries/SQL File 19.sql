use stockexchange;

#18.	Which shares were traded in the last year? (i.e. since this day last year)
SELECT * FROM trades WHERE transaction_time <= DATE_SUB(CURDATE(), INTERVAL 1 YEAR);
commit;