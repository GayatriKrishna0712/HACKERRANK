#A company wants to contact each of its employee regarding the policy changes. They have international customers but their databases does not include country code with their phone numbers.
# There are 2 tables in the databases: Customers and Country_Codes.
# Customers Table contain all details of every customers. The second table contains country code of every country.
# Write a query to retrive a list of all customer ids , names and phone numbers with country code concatenated with their phone numbers. Sort the out put in order of the customer id.

SELECT 
    customers.customer_id,
    customers.name,
    CONCAT('+',country_codes.country_code,customers.phone_number) as phone_number
FROM customers
JOIN country_codes ON customers.country = country_codes.country
order by 1 ASC;
