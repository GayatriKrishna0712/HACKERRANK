/* 
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* * * * * 
* * * * 
* * * 
* * 
*
Write a query to print the pattern P(20).*/

SET @count = 20 + 1;
SELECT REPEAT('* ', @count := @count -1) FROM INFORMATION_SCHEMA.TABLES;
