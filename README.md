# Car-Sales-Analysis

##  Overview
> This project explores car sales data to uncover trends, customer preferences, and key performance metrics.  
It uses SQL for data querying, Excel for data analysis, and Power BI for interactive dashboards.

## Objectives  
- Identify best-selling car models   
- Analyze seasonal and monthly sales trends  
- Understand customer demographics and regional sales distribution  
- Provide data-driven recommendations for sales improvement
 
  **Key Fields:**  
 > - `Annual income`  
 > - `Date`  
 > - `Price`  
 > - `Gender`  
 > - `Dealer Name`  
 > - `Dealer Region`
    
## Tools  
- **SQL** (data extraction )   
- **Power BI** (Visualisation)  
- **Excel** (Feature Engineering)

## SQL
``` sql
-- 1 Retrieve all data from the table
Select * from [car_dataset 2]

-- 2.	Get all unique car models sold
select count(distinct(Model)) as models from [car_dataset 2]

-- 3.	Find the total number of cars sold
select COUNT(Car_id) as Total_car_sold from [car_dataset 2]

-- 4. Get all sales made by a specific dealer (e.g., " Buddy Storbeck's Diesel Service Inc”)
SELECT *
FROM [car_dataset 2]
WHERE Dealer_Name LIKE '%Buddy Storbeck''s Diesel Service Inc%'

-- 5.	Retrieve all sales from a specific date (e.g., '2024-01-15')
Select * from [car_dataset 2] where Date ='2022-01-02'

-- 6.	Find the total revenue generated from car sales
select sum (Price) as Total_Revenue from [car_dataset 2]

-- 7.	Count the number of cars sold by each dealer
select Dealer_Name,sum(Price) as Revenue from [car_dataset 2] 
GROUP BY Dealer_Name
order by Revenue desc

-- 8.	Get the average car price per company

select Company,count(Company) as Total_sales, sum(Price) as Total_Revenue, AVG(Price) as AVG_price
from [car_dataset 2] 
group by Company
order by AVG_price desc

-- 9.	Retrieve the most expensive car sold
Select top 1* from [car_dataset 2] 
order by Price desc

-- 10.	Retrieve sales data where the customer has an annual income greater than $100,000
select * from [car_dataset 2]
where Annual_Income >100000

-- 11.	Get the number of cars sold by body style
select Body_Style,COUNT(Body_Style) as Total_Sales from [car_dataset 2]
group by Body_Style
order by Total_Sales desc

-- 12.	Retrieve the number of male and female customers who bought cars
select Gender,COUNT(Gender) as Total_Sales from [car_dataset 2]
group by Gender
order by Total_Sales desc

-- 13.	Find the top 5 most sold car models
select top 5 Model,COUNT(Model) as Total_Sales from [car_dataset 2]
group by Model
order by Total_Sales desc

-- 14.	Find the least expensive car sold
Select top 1* from [car_dataset 2] 
order by Price 

-- 15.	Retrieve all sales for cars of a specific color (e.g., 'White')
select * from [car_dataset 2] where color ='Black'
```
## Data visualization
-  [To view power bi dashboard page 1 click here](https://ibb.co/v4F8MFcd)
-  [To view power bi dashboard page 2 click here](https://ibb.co/LXcMPwF7)
- [To view power bi dashboard page 3 click here](https://ibb.co/DDvthgjv) 
## Dashboard
![Screenshot 2025-05-09 224820](https://github.com/user-attachments/assets/9c19476d-2ad9-4e7d-9ede-734e79ca6dc3)

##  Key Insights  
> - 4th Quarter has the highest number of sales
> - Sales show a steady growth from January to August followed by sharp increases in September and November with the upward trend continuing into December.
> - The majority of customers (2,000 out of 3,000) fall into the medium annual income range,
meaning they earn between $500,000 and $1,000,000
> - There’s no clear positive correlation between income and car price,higher income doesn’t always lead to buying more expensive cars purchased.
> - 21.51% of the sales were made by females, while 78.49% were made by males.
> - Top 3 car model are Diamante, Prizm, Silhouette



## Recommendation
> - `Gender Demographics`
Focus on Females: With 21.51% of sales coming from females, consider strategies to attract more female buyers. This could include targeted ads, collaborations with female influencers, or offering female-friendly car features.
Male Dominance: The majority of sales (78.49%) come from males. Explore what appeals to this demographic and ensure you're continuing to meet their needs.
> - `Income vs. Car Price`
    Focus on offering a variety of vehicles that appeal to different income levels, rather than only high-end models.
> - `Seasonal offers`
   The sharp sales increase in these months shows a potential surge in demand. Ensure stock availability, marketing, and promotions are aligned with this trend.
