select product_name , year , price 
from sales  
inner Join product 
on sales.product_id = product.product_id