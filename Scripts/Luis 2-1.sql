--Count the amoun of cars sold by employee, Including the ones with 0 sales
select e.firstName,
       e.lastName,
       count(s.salesId) as AmountOfCars
from employee e
left join sales s on e.employeeID=s.employeeID
group by e.firstName
order by count(s.salesID) desc

--Validation 
select employeeId
from employee
where firstName='Saleem'

select count(*)
from sales 
where employeeId=96
