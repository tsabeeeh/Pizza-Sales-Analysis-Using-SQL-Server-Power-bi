Select * from pizzas
Select * from orders
Select * from pizza_types
Select * from order_details

--===============================pizza kpis ===================================
--===================Total Revenue========================
select round(SUM(quantity*price),2) as Total_Revenue
from order_details
join pizzas 
on order_details.pizza_id = pizzas.pizza_id
--===================Total Orders=========================
select COUNT(order_id) as Total_Orders
from orders 
--===================total pizza sold====================
select SUM(quantity) as total_pizza_sold
from order_details
--==================AVG Order value=======================
select round(SUM(quantity*price) / count(distinct(order_id)),2) as AVG_Order_value
from order_details
join pizzas 
on order_details.pizza_id = pizzas.pizza_id
--===================== AVG pizza per order===============
select sum(quantity)/ count(distinct(order_id)) as AVG_pizza_per_order
from order_details
--=====================Performances=======================
