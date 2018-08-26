--quest 1:
select round(sum(revenue), 0) as total_revenue
from customers
where ifnull(cc_payments, 0) > 0;

--quest 2:
select avg(cc_payments)
from (	
	select distinct customer_id
	, case when ifnull(cc_payments, 0) > 0 then 1.0 else 0 end as cc_payments
	from customers
	where ifnull(female_items, 0) > 0
	);

--quest 3:
select avg(revenue)
from customers
where (ifnull(ios_orders, 0)
		+ ifnull(android_orders, 0)
		+ ifnull(desktop_orders, 0)) > 0;

--quest 4:
--Notes:
	--I assumed that a customers needs to be opted in for newsletters to be eligible for an email campaign (data protection)
	--I calculated the actual average item price by excluding discounts used  
	--I suspect that the "average_discount_used" column should be divided by 10,000 to be usable
	--To select customers interested in men's wear, I set a treshold of at least 50% of items purchased being men's wear
	--I set the threshold at $250 per item for a customer to be eligible for the campaign
		--This $250 is a rough figure for a typical "luxury" item price
select distinct c.customer_id
from customers as c
inner join (
			select
				customer_id
				, revenue / ((1-average_discount_onoffer)*(1-average_discount_used/10000)) as revenue_no_discount
			from customers
			) as x on x.customer_id = c.customer_id
where is_newsletter_subscriber = "Y"
	and (male_items*1.0) / (items*1.0) > 0.5
	and revenue_no_discount / items > 250
order by x.revenue_no_discount/c.items desc;