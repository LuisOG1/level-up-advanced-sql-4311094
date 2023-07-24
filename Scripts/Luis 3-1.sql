Select strftime('%Y', soldDate) as Year,
       sum(salesAmount) as TotalSales
from sales
group by strftime('%Y', soldDate)
