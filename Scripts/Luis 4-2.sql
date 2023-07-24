--Simple select try
select strftime('%m', s.soldDate)as Month,
        round(sum(salesAmount),2)
from sales s
group by strftime('%m', s.soldDate)

--Yearly and monthy sales agregation, Yearly running total with window function 
Select strftime('%Y', s.soldDate)as Year,
        strftime('%m', s.soldDate)as Month,
        sum(s.salesAmount) as MonthlySales,
        sum(sum(s.salesAmount))over(partition by strftime('%Y', s.soldDate)
                                order by  strftime('%Y', s.soldDate),strftime('%m', s.soldDate)) as YearlySalesRunning
from sales s
group by strftime('%Y', s.soldDate),strftime('%m', s.soldDate)

---Using widow function rank, is you require to use a where clause use it out of the subquery
Select *
from ( select e.lastName as LastName,
                s.salesAmount as SalesAmount,
                rank() over(order by s.salesAmount desc) as SalesRank
        from sales s 
        join employee e on s.employeeId=e.employeeId ) as RanksTable
where SalesRank=199


