# Chocolate_Sales_Analysis

### Project Preview:
          A business intelligence project that analyzes chocolate sales data across countries, products, and salespeople using SQL for data preparation, Power BI for interactive dashboards, and Tableau for visual storytelling. 
          The goal is to derive key performance insights and trends from the dataset.



### Tools Used:
          Excel – Pre-cleaning the raw dataset.

          SQL (MySQL) – Data cleaning, transformation, and analysis.

          Power BI – Dynamic dashboards and KPI tracking.

          Tableau – Visual storytelling and trend insights.



### Dataset Description:

    The dataset includes chocolate product sales with fields such as

          Sales_Person

          Country

          Product

          Date
          
          Amount
          
          Boxes Shipped

 📁 Source:  Kaggle("https://www.kaggle.com/datasets/atharvasoundankar/chocolate-sales")



### Data Cleaning Steps:
  
   Performed in Excel:
        
              ~ Renamed columns to snake_case.
  
              ~ Standardized text values (capitalization, spacing).
  
              ~ Removed symbols and cleaned numeric columns.
                  
              ~ Parsed date format to YYYY-MM-DD.
                  
              ~ Checked and handled missing values.
                  
              ~ Exported cleaned file.



### SQL Analysis Questions:

   1. A. Total sales By product-

          select products,
          sum(amount) As Total_Sales,
          From sales
          group by products
          order by Total_Sales;
      ![S1 B](https://github.com/user-attachments/assets/909a9d3b-28fa-4bfe-bfcb-230a392e920a)

      B.Total Revenue-        

          select
          sum(amount) As Total_revenue
          from sales;
            
      ![S1 A](https://github.com/user-attachments/assets/4d023625-9576-4091-86d0-7cdab7bb68bb)

 
   2. Top 5 countries by revenue-
            
            Select country,
	          Sum(amount) As Total_sales_by_country
            from sales
            Group by country
            order by Total_sales_by_country desc
            Limit 5;
      
        ![S2](https://github.com/user-attachments/assets/d061dd04-865e-4941-9b9a-941002aaabd8)

   
   3. Top 5 Salespeople by Revenue-

            Select sales_person,
            sum(amount) As Total_sales_by_Sales_persons
            from sales
            group by sales_person
            order by Total_sales_by_Sales_persons Desc
            limit 5;
       ![S3](https://github.com/user-attachments/assets/7cd72d02-591e-4481-83db-98c84dfb6594)

   
   4. Most and Least Sold Products by Revenue-

            Select products,
            sum(amount) as Total_Products_sold
            from sales
            group by products
            order by Total_Products_sold desc;
        ![S4](https://github.com/user-attachments/assets/764d855f-1a0f-42cd-bf62-9390acda6b20)

   
   5. Number of Transactions Per Country-

            select country,
            count(*) as Number_of_transaction_by_country
            from sales
            group by country
            order by Number_of_transaction_by_country desc;
      ![S5](https://github.com/user-attachments/assets/8a9d9084-da03-4596-9f40-15624536166c)

   
   6. Average Sale Amount per Box by Product-

            SELECT products,
            ROUND(SUM(amount) / SUM(Boxes_shipped)) AS avg_per_box_by_product
            FROM sales
            GROUP BY products
            ORDER BY avg_per_box_by_product DESC;
            ![S6](https://github.com/user-attachments/assets/f6960db1-109c-4e57-8d93-f2c4b1e49d84)

   
   7. Monthly Sales Trend-

            select 	date_format(date,'%Y-%m') as sale_month,
            sum(amount) as monthly_sales
            from sales
            group by sale_month
            order by sale_month;
       ![S7](https://github.com/user-attachments/assets/2dbca2db-69b3-43c6-9626-b739fa5f0e60)

   
   8. Salesperson Performance by Country-

            select sales_person, country,
            sum(amount) as performance_by_country
            from sales
            group by sales_person,country
            order by performance_by_country desc;
       ![S8](https://github.com/user-attachments/assets/b0224a41-e626-4f9c-b4ef-fb18eefa81f0)

   
   9. Top Salespeople by Boxes Shipped-

            select sales_person,
            count(boxes_shipped) as Total_boxes_shipped_by_sales_person
            from sales
            group by sales_person
            order by Total_boxes_shipped_by_sales_person;          
        ![S9](https://github.com/user-attachments/assets/d68ca120-d869-486f-9122-df78e0d22bac)

   
   10. Boxes shipped per country -

            select country,
            sum(Boxes_shipped) as Total_boxes_shipped
            from sales
            Group by country
            order by Total_boxes_shipped desc;
        ![s10](https://github.com/user-attachments/assets/b4853a24-961d-4d90-8f2b-008876570705)




### PowerBI Dashboard:
    
  Key Visuals:

       1. Monthly sales trend (line chart)
        
       2. Sales by country (map)
        
       3. Top salespeople (bar chart)
        
       4. Product performance (treemap)
        
       5. KPI cards (Total Sales, Boxes Shipped, Avg Sale)


  Custom DAX Measures:

       ~ Total Sales = SUM(Amount)
        
       ~ Avg Sale = AVERAGE(Amount)
        
       ~ Sales per Box = [Total Sales] / [Total Boxes Shipped]
        
       ~ Sales Growth % (Month-over-Month)

  ![CS_1](https://github.com/user-attachments/assets/82fcbd7b-3bcd-4982-821f-3d9d05eb6951)

  ![CS_2](https://github.com/user-attachments/assets/c7339f95-14d9-418e-a913-bf4fd3d9e543)

  ![CS_3](https://github.com/user-attachments/assets/52197bde-e854-470b-b031-9cc7870a51d6)

### Tableau Dashboard:
      
  Visuals:

       ~ Total Sales
       
       ~ Average Sale Amount
      
       ~ Total Boxes Shipped
       
       ~ Monthly sales trend (line)
        
       ~ Country-wise sales (map)
        
       ~ Top salesperson (bar)
        
       ~ Product Revenue breakdown
       
       ~ Sales Per Box 
      
        
       






###Key Insights:
      
      ~ India and UK are the top-performing countries

      ~ 85% Dark Bars and Mint Chip Choco are best-selling products
      
      ~ John and Jehu are consistently high performers
      
      ~ Sales peaked in Q2 of 2022
      
      ~ High-value orders often exceed 5,000 in revenue




###Conclusion:
      
      This project demonstrated how to go from raw data to insightful dashboards using SQL for backend logic, Power BI for real-time interactivity, and Tableau for deep visual storytelling. 
      It offers clear business intelligence for stakeholders in sales performance.
