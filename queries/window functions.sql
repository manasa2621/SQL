---pecentage of product price(window)
SELECT
  DISTINCT cart_id,
  SUM(total_cost) OVER w1 as"product price",
  CONCAT( 
      ROUND( 
          ( 
            SUM( total_cost::float4 ) OVER w1 / 
            SUM( total_cost::float4 ) OVER() 
          ) * 100    
      ),'%' ) as "percentage of of price"
FROM cart
WINDOW w1 AS( PARTITION BY total_cost );