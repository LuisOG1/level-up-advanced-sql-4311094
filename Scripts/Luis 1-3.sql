select DISTINCT s.*, c.*
from sales s
full join customer c on s.customerID=c.customerID
--where s.salesId is null
--where s.customerId is null