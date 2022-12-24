---case to display price class(case statement)
SELECT product_id,product_name, product_price, 
    CASE   
      WHEN  product_price > 20000 THEN 'expensive'
      WHEN  product_price <= 10000 THEN  'cheap'
      WHEN  product_price BETWEEN 10000 and 20000  THEN 'average'
    END AS "price class"
FROM product;
