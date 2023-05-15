SELECT CONCAT(first_name, last_name), 
        REPLACE(SUBSTR(hire_date, 1, 8), '/')
FROM employees
ORDER BY first_name ASC;

