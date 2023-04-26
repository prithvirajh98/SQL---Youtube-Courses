# How to impose any condition ?
# Where clause is filtering the data in excel and Order by is sorting the data in Excel

# Q1: Select all the data where the sale amount that is more than $10,000
Select * from sales
where amount > 10000;
# This operation is like a Filter in Excel

# Q2: Select all the data in the (ascending/descinding)order of the amount => Order by clause
Select * from sales
where amount > 10000
order by amount;

Select * from sales
where amount > 10000
order by amount desc;

Select * from sales
where geoid = 'g1'
order by PID, Amount desc;

# Q3: Select all the results where all the sales is more than 10000 and year should be 2022
Select * from sales
where amount > 10000 and SaleDate >= '2022-01-01';

# What if there are sales from 2023 and 2024 and you want the see the data of only 2022
Select SaleDate, Amount from sales
where amount > 10000 and year(SaleDate) = 2022
order by amount desc;

# The Between Condition
# Q4: Find out all the sales where the number of boxes are from 0 to 50
Select * from sales
where boxes > 0 and boxes <= 50;

Select * from sales
where boxes between 0 and 50;

# The Weekday Function
# Q5: Find out all the sales that are happeing on Fridays
Select SaleDate, Amount, Boxes, weekday(SaleDate) as 'Dayof Week' from sales
where weekday(SaleDate) = 4;

