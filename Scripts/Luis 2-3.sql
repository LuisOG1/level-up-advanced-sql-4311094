select e.employeeID,
      e.firstName,
       e.lastName,
       min(s.SalesAmount) as LowestCarPrice,
       max(s.SalesAmount) as MaxCarPrice,
       s.soldDate,
       count(s.salesId) as CountOfSales
from employee e
join sales s on e.employeeID=s.employeeID
where s.soldDate>= date('now','start of year')
group by e.employeeID
having count(*)>=5
