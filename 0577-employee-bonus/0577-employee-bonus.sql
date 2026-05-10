SELECT emp.name, b.bonus
FROM employee AS emp
LEFT JOIN bonus AS b
    ON emp.empId = b.empId
WHERE b.bonus < 1000
    OR b.bonus IS NULL;