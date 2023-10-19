#Week 2 queries answers

-- Q1
SELECT COUNT(*) "Total Number of Share Price Records"
FROM shares_prices;

-- Q2
SELECT MIN(price) "Minimum Share Price"
FROM shares_prices;

-- Q3
SELECT MAX(share_amount) "Maximum Share Amount"
FROM trades;

-- Q4
SELECT COUNT(last_name) "Number of Names", last_name
FROM brokers
GROUP BY last_name;

-- Q5
SELECT round(AVG(price_total),2) "Average Price Total"
FROM trades;

-- Q6
SELECT price, round(price * 1.2,2) "20% Increase"
FROM shares_prices;

-- Q7
SELECT SUM(share_amount) "Total Share Amount"
FROM trades;

-- Q8
SELECT round(SUM(PRICE),2) "Total Share Price", share_id
FROM shares_prices
GROUP BY share_id;

-- Q9
SELECT COUNT(currency_id) "Total Currency", currency_id
FROM shares
GROUP BY currency_id;