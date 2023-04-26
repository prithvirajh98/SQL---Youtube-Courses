# Joins 
# This is used to combine multiple tables and produce one output

# Q1: Sales data with person's name
Select s.SaleDate, s.amount, p.Salesperson, s.SPID, p.SPID from sales s
join people p on p.SPID = s.SPID;

# Q2: Product name that we are selling in this shipment
Select s.SaleDate, s.amount, pr.Product from sales s
left join products pr on pr.PID = s.PID;

# Joining Multiple Tables
Select s.SaleDate, s.amount, p.Salesperson, pr.Product, p.Team from sales s
join people p on p.SPID = s.SPID
join products pr on pr.PID = s.PID;

# Conditions With Joins
Select s.SaleDate, s.amount, p.Salesperson, pr.Product, p.Team from sales s
join people p on p.SPID = s.SPID
join products pr on pr.PID = s.PID
where s.amount < 500 and p.team = 'Delish';

Select s.SaleDate, s.amount, p.Salesperson, pr.Product, p.Team from sales s
join people p on p.SPID = s.SPID
join products pr on pr.PID = s.PID
where s.amount < 500 and p.team = '';

Select s.SaleDate, s.amount, p.Salesperson, pr.Product, p.Team from sales s
join people p on p.SPID = s.SPID
join products pr on pr.PID = s.PID
join geo g on g.geoid = s.geoid
where s.amount < 500 and p.team = ''
and g.geo in ('New Zealand', 'India')
order by SaleDate;
