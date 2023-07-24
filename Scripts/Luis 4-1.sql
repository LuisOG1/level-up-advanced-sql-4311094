select e.firstName,
        e.lastName,
        m.model,
        count(m.model) as AmountOfCars,
        rank() OVER (PARTITION BY s.employeeId
                      ORDER BY count(m.model) desc) as Rank
from sales s
join employee e on s.employeeId=e.employeeId
join inventory i on s.inventoryId=i.inventoryId
join model m on i.modelId=m.modelId
group by e.firstName,e.lastName,m.model


