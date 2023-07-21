Select e.firstName,
        e.lastName,
        m.firstName as ManagerF,
        m.lastName as ManagerL
from employee e 
join employee m on e.managerId=m.employeeId