 select c.name,d.rentals_date from customers c inner join
(select r.id_customers,r.rentals_date from rentals r where (r.rentals_date>='2016-09-01' and r.rentals_date<='2016-09-30')) d
on c.id=d.id_customers 
