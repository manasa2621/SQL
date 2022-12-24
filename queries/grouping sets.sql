---total average price per brands (grouping sets)
select grouping(b.brand_id), b.brand_id, AVG(p.product_price)
FROM public.product as p
JOIN public.belongs as b USING (product_id)
GROUP BY
	GROUPING SETS (
		(b.brand_id),
     	()
	)
order by b.brand_id