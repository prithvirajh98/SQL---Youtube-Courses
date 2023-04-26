# Using Group By to create Report Style Dataset
# It gives a Pivot report

# Q1: Group the data by geoid in the Sales table
Select geoid, sum(amount), avg(amount), sum(Boxes) from sales
group by geoid;


Select g.geo, sum(amount), avg(amount), sum(Boxes) from sales s 
join geo g on s.geoid = g.geoid
group by g.geo;

# Q2: Get the Data from Poeple and Product Table
Select pr.Category, p.Team, sum(Boxes), sum(Amount) from sales s 
join people p on p.spid = s.spid
join products pr on pr.pid = s.pid
group by pr.category, p.team;

Select pr.Category, p.Team, sum(Boxes), sum(Amount) from sales s 
join people p on p.spid = s.spid
join products pr on pr.pid = s.pid
where p.Team <> ''
group by pr.category, p.team
order by pr.category, p.team;

# Total amount by Products and Total amount by Top 10 Products
select pr.Product, sum(s.Amount) from sales s
join products pr on pr.pid = s.pid
group by pr.Product
order by sum(s.Amount) desc;

# Limit Operation
select pr.Product, sum(s.Amount) from sales s
join products pr on pr.pid = s.pid
group by pr.Product
order by sum(s.Amount) desc
limit 10;