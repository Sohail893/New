--Set Operator
--Union Combine the results of two tables or select 
select first_name, last_name
from sales.staffs
Union 
SELECT first_name , last_name
from sales.customers

select email, last_name
from sales.staffs
Union ALL
SELECT first_name , last_name
from sales.customers