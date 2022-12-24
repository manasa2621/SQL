--- view to show transactions within a particular month(view)
CREATE VIEW "transactions" AS
SELECT p.date,b.payment_id
FROM payment as p
JOIN buys as b USING(payment_id) where EXTRACT (month FROM p.date) BETWEEN 08 AND 10 
ORDER BY p.payment_id;
---select * from transactions;