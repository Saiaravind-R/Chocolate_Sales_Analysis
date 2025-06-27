Create schema chocolate_sales;

use chocolate_sales;

CREATE TABLE Sales(
    sales_person VARCHAR(100),
    country VARCHAR(100),
    product VARCHAR(100),
    date DATE,
    amount INT,
    boxes_shipped INT
);

# imported table From .csv File .

Show Tables;

Select * From sales;

Describe sales;

alter table sales
rename column product to products
;

# 1. (A). total Revenue -
		Select 
		sum(amount) As Total_revenue
		From sales;

#    (B).Total Sales by product -
		Select products,
		sum(amount) As Total_Sales
		From sales
		group by products
		order by Total_Sales;


# 2.Total Sales by Country (Ranked) -
		Select country,
		Sum(amount) As Total_sales_by_country
		From sales
		Group by country
		order by Total_sales_by_country desc;


# 3.Top 5 Salespeople by Revenue -
		Select sales_person,
		sum(amount) As Total_sales_by_Sales_persons
		From sales
		group by sales_person
		order by Total_sales_by_Sales_persons Desc
		limit 5;


# 4.Most and Least Sold Products by Revenue -
		Select products,
		sum(amount) as Total_Products_sold
		From sales
		group by products
		order by Total_Products_sold desc;


# 5.Number of Transactions Per Country -
		Select country,
		count(*) as Number_of_transaction_by_country
		From sales
		group by country
		order by Number_of_transaction_by_country desc;

# 6.Average Sale Amount per Box by Product -
		Select products,
		ROUND(SUM(amount) / SUM(Boxes_shipped)) AS avg_per_box_by_product
		From sales
		GROUP BY products
		ORDER BY avg_per_box_by_product DESC;


# 7.Monthly Sales Trend -
		Select 
		date_format(date,'%Y-%m') as sale_month,
		sum(amount) as monthly_sales
		From sales
		group by sale_month
		order by sale_month;

# 8.Salesperson Performance by Country -
		Select 
		sales_person,
		country,
		sum(amount) as performance_by_country
		From sales
		group by sales_person,country
		order by performance_by_country desc;


# 9.Top Salespeople by Boxes Shipped -
		Select sales_person,
		count(boxes_shipped) as Total_boxes_shipped_by_sales_person
		From sales
		group by sales_person
		order by Total_boxes_shipped_by_sales_person;

#10. Boxes shipped per country -

	Select country,
    sum(Boxes_shipped) as Total_boxes_shipped
    From sales
    Group by country
    order by Total_boxes_shipped desc;