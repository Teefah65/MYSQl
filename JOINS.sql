-- jOINS
#allows the combination of two or more table
SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

# INNER JOINS RETURNS ONLY TABLE THAT ARE THE SAME ROW AND COLUMNS IN THE SAMNE TABLE
SELECT DEM.employee_id, age, occupation
FROM employee_demographics AS DEM
INNER JOIN employee_salary AS SAL
	ON DEM.employee_id = SAL.employee_id
    ;

    -- OUTER JOIN
    #OUTER JOIN HAVE LEFT(OUTER) JOIN AND RIGHT(OUTER)JOIN |left join id going to take everything from the left table and return matches for the right table 
    #right join takes everything from the right table and returns null if there is not a match in both tables
SELECT *
FROM employee_demographics AS DEM
left JOIN employee_salary AS SAL
	ON DEM.employee_id = SAL.employee_id
    ;
    
SELECT *
FROM employee_demographics AS DEM
RIGHT JOIN employee_salary AS SAL
	ON DEM.employee_id = SAL.employee_id
    ;
    -- self join 
    # its a join where you tie a table to it self
    SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id
    ;
SELECT emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_name,
emp2.first_name as first_name_emp,
emp2.last_name as last_name_emp
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;
-- JOINING MULTIPLE TABLES

SELECT *
FROM employee_demographics AS DEM
INNER JOIN employee_salary AS SAL
	ON DEM.employee_id = SAL.employee_id
INNER JOIN parks_departments pd
	ON SAL.dept_id =pd.department_id
    ;
    
    SELECT *
    FROM parks_departments
    ;