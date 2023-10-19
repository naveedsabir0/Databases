use stockexchange;

#17.	Which share ids have their prices between 400 and 500?
SELECT share_id FROM shares_prices WHERE price between 400 and 500;
commit;