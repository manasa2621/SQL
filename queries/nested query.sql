--- Get all products purchased from customers who live in Mysore, Banglore, Mumbai(nested query)
SELECT c.customer_name, c.city
FROM buys AS o, (
    SELECT customer_id, city, customer_name
    FROM customer
) AS c
WHERE  o.customer_id = c.customer_id AND 
c.city IN ('mysore', 'banglore', 'mumbai');