select unique_id,name 
from employees as emp
left join EmployeeUNI as UNI 
on emp.id=UNI.id

