--Max and Min car price sold by each employee this year
select e.employeeID,
      e.firstName,
       e.lastName,
       min(s.SalesAmount) as LowestCarPrice,
       max(s.SalesAmount) as MaxCarPrice,
       s.soldDate
from employee e
join sales s on e.employeeID=s.employeeID
where s.soldDate>	'2022-12-31 23:59:59'
group by e.employeeID
Order by max(s.SalesAmount) desc