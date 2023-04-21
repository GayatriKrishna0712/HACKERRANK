#A stock is considered to be profitable if the purchased price is strictly greater than the current price.
#Write a query to find the stock_codes of all stocks which are profitable based on definition and sort the output in ASC.

SELECT
     price_today.stock_code
 FROM price_today
 JOIN price_tomorrow ON price_today.stock_code = price_tomorrow.stock_code
 WHERE price_tomorrow.price>price_today.price
 ORDER BY stock_code;
