---Give products sold and the total cost of products on a particular date(aggregate function)

select count(buys.payment_id) as total_items_sold,sum(product.product_price) as total_cost 
    from payment, buys, product 
    where payment.payment_id=buys.payment_id 
    and product.product_id=buys.cart_id 
    and date='2022-10-24';
