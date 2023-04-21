#One the basis of merit, a company decided to promote some of its employee in its HR division at the end of the quater due to their high performance. 
# Write a query to find the employeeID, name of employees who work in the HR department who earned a bonus of $5000  or more.


SELECT 
       e.employee_ID,
       e.name 
FROM employee_information e
JOIN last_quarter_bonus lqb 
     ON lqb.employee_ID = e.employee_ID
WHERE e.division REGEXP 'HR' 
      AND lqb.bonus>=5000;
