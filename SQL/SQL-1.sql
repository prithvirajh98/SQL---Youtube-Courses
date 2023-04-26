show tables;

select * from sales;

select SaleDate, Amount, Customers from sales;

Select Amount, Customers, GeoID from sales;

# Adding an extra coloumn
Select SaleDate, Amount, Boxes, Amount/Boxes from sales;

# Renaming the added coloumn
Select SaleDate, Amount, Boxes, Amount/Boxes 'Amount Per Box' from sales;
# Select SaleDate, Amount, Boxes, Amount/Boxes as 'Amount Per Box' from sales;