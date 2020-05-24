INSERT INTO department (name) VALUES('HR');
INSERT INTO department (name) VALUES('Accounts');
INSERT INTO role (title, salary,department_id) VALUES('Accountant', '5000', '1' );
INSERT INTO role (title, salary,department_id) VALUES('Accounts Manager', '6000', '1' );
INSERT INTO role (title, salary,department_id) VALUES('HR Manager', '10000', '2' );
INSERT INTO role (title, salary,department_id) VALUES('Recruiting Manager', '10000', '2' );
INSERT INTO employee (first_name, last_name, role_id) VALUES('Prakriti', 'Rajbhandari', '1' );
INSERT INTO employee (first_name, last_name, role_id) VALUES('Binit', 'Joshi', '3' );


SELECT * FROM employee 
LEFT JOIN role ON employee.role_id = role.role_id
LEFT JOIN department ON role.department_id = department.department_id
;
CREATE TABLE new_table SELECT * FROM role 
LEFT JOIN department ON role.department_id = department.department_id
;
SELECT * FROM new_table 

SELECT employee_id, CONCAT( first_name, " ", last_name ) AS fullname 
FROM Employee_tracker.employee;



SELECT department.name,employee.first_name,employee.last_name,role.salary
FROM department,role,employee
WHERE department.department_id=role.department_id
AND role.role_id=employee.role_id ;


SELECT department.name,employee.first_name,employee.last_name,role.salary,role.title
FROM department,role,employee
WHERE department.department_id=role.department_id
AND role.role_id=employee.role_id AND department.name = 'Accounts and Finance';