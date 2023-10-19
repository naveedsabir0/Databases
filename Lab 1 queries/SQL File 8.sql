use stockexchange;

#7.	What trades have been made in the last 7 days?
SELECT * FROM trades WHERE transaction_time between 28/09/2023 and 05/10/2023;
commit;