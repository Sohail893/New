--subquery
--Nested Query
-- where/select/from
select customer_id
from sales.customers
where city = 'New York'

select * from
sales.orders
where customer_id in (16,178,327,411,854,927,1016)

select * from -- outer
sales.orders
where customer_id in (
 select -- inner
   customer_id
 from 
   sales.customers
 where
   city = 'New York'
   )

-- wo products chayai hain jinki price avg price se zyadaa ho
SELECT product_name, list_price
FROM production.products
WHERE list_price > (
    SELECT AVG(list_price)
    FROM production.products
    WHERE brand_id IN (
        SELECT brand_id
        FROM production.brands
        WHERE brand_name IN ('Electra', 'Trek')
    )
);


--find product name of these two categories 
-- comfort bicycles
-- electric bikes

select * from production.products;
select * from production.categories;

select * from production.products
where category_id in (select category_id from production.categories
where category_name in ( 'Comfort Bicycles' , 'Electric Bikes'));
