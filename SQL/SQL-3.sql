# Using Multiple Tables

# Exploring what is there in the Poeple's Table
Select * from people;

# Q1: Find out all the names who are in Delish or Jucies Team
Select * from people
where team = 'Delish' or team = 'Jucies';

# The In Clause
Select * from People
where team in ('Delish', 'Jucies');

# The Pattern Matching => The Like Operator
Select * from People
where salesperson like 'B%';

Select * from People
where salesperson like '%B%';


# The Case Operator
Select * from sales;

# Q1: Add amount category as a coloumn based on the some cases
Select SaleDate, Amount,
	case 	when amount < 1000 then 'Under 1k'
			when amount < 5000 then 'Under 5k'
            when amount < 10000 then 'Under 10k'
		else '10k or more'
    end as 'Amount Category'
from sales;