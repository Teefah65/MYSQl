-- GROUP BY
SELECT *
FROM employee_demographics
;

SELECT *
FROM employee_demographics
;

SELECT gender, Avg(age), max(age), min(age), count(age)
FROM employee_demographics
GROUP BY gender
;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;

-- ORDER BY
# ORDERBY is ascending order NATURALLY
SELECT *
FROM employee_demographics
 ORDER BY gender, age DESC
;