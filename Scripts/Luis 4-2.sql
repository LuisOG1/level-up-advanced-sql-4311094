select strftime('%m', s.soldDate)as Month,
        round(sum(salesAmount),2)
from sales s
group by strftime('%m', s.soldDate)

Select strftime('%Y', s.soldDate)as year,
        strftime('%m', s.soldDate)as Month,
        sum(s.salesAmount) as MonthlySales,
        sum(sum(s.salesAmount))over(partition by strftime('%Y', s.soldDate)
                                order by  strftime('%Y', s.soldDate),strftime('%m', s.soldDate)) as YearlySalesRunning
from sales s
group by strftime('%Y', s.soldDate),strftime('%m', s.soldDate)