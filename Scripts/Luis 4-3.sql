Select strftime('%Y-%m', s.soldDate)as YearMonth,
        count(*) as SoldCarsCurrentMonth,
        LAG (count(*),1,0) over(PARTITION by strftime('%m', s.soldDate)
                            order by strftime('%m', s.soldDate)) as LastMonth
from sales s
group by YearMonth

