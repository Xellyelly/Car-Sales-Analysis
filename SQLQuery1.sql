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