---Display null values as no address
SELECT coalesce(delivery_address, 'no address') FROM "buys";