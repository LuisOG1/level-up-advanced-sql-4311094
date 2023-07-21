Select e.FirstName,
        e.LastName,
        s.salesAmount
From employee e 
left join sales s on e.employeeId=s.employeeId
where s.salesAmount is null AND e.title='Sales Person'

Select count (e.employeeId)
From employee e 
left join sales s on e.employeeId=s.employeeId
where s.salesAmount is null AND e.title='Sales Person'