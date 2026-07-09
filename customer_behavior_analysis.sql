select * from customer_behavior_table limit 20;

-- total revenue generate by male and female
select gender, sum(purchase_amount) as total_revenue
from customer_behavior_table
group by gender

-- customer used a discount still spent more then average purchase amount
select customer_id, purchase_amount
from customer_behavior_table
where discount_applied = 'Yes' and purchase_amount >=(select avg(purchase_amount) from customer_behavior_table)

-- top 5 products with highest avg review rating
select item_purchased, round(avg(review_rating::numeric),2)
from customer_behavior_table
group by item_purchased
order by avg(review_rating) desc
limit 5

-- compare avg purchase amount b/w standard and express shipping
select round(avg(purchase_amount),2), shipping_type
from customer_behavior_table 
where shipping_type in ('Express', 'Standard')
group by shipping_type

-- do subscribed customers spend more?compare avg spend and total revenue b/w subscribers and non- subscribers
select subscription_status,
count(customer_id) as total_customers, round(avg(purchase_amount),2) as avg_spend, round(sum(purchase_amount),2) as total_revenue
from customer_behavior_table
group by subscription_status
order by total_revenue, avg_spend desc

-- 5 products that have highest % of purchase with discount applied
select item_purchased, round(100*sum(case when discount_applied = 'Yes' then 1 else 0 end) / count(*),2) as discount_rate
from customer_behavior_table
group by item_purchased
order by discount_rate desc
limit 5

-- segment customer new, returning, loyal based on their total no. of previous purchases, and show the count of each segment
with customer_type as (
select customer_id, previous_purchases, 
case when previous_purchases = 1 then 'New'
	when previous_purchases between 2 and 10 then 'Returning'
	else 'Loyal'
end as customer_segment
from customer_behavior_table
)
select customer_segment, count(*) as "Number of Customers"
from customer_type
group by customer_segment

-- top 3 most purchased products within each category
with item_counts as (
select category, item_purchased, count(customer_id) as total_orders, row_number() over(partition by category order by count(customer_id) desc) as item_rank
from customer_behavior_table
group by category, item_purchased
)
select item_rank, category, item_purchased, total_orders
from item_counts
where item_rank <=3

-- are repeat buyers also likely to subscribe
select subscription_status,
count(customer_id) as repeat_buyers
from customer_behavior_table 
where previous_purchases >5
group by subscription_status

-- revenue contribution by each age group
select age_group, sum(purchase_amount) as total_revenue
from customer_behavior_table
group by age_group
order by total_revenue desc;