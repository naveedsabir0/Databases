use stockexchange;

#2.	What trades have been made this month?
SELECT * FROM trades WHERE transaction_time between 01/09/2023 and 31/09/2023;
commit;