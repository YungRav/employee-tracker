USE employee_db;
INSERT INTO department (name) VALUES ('Sales');
INSERT INTO department (name) VALUES ('Engineering');
INSERT INTO department (name) VALUES ('Finance');
INSERT INTO department (name) VALUES ('Legal');

USE employee_db;
SELECT * FROM department;

USE employee_db;
INSERT INTO role (title, salary, department_id) VALUES ('Sales Lead', '100000', '1');
INSERT INTO role (title, salary, department_id) VALUES ('Salesperson', '80000', '1');
INSERT INTO role (title, salary, department_id) VALUES ('Lead Engineer', '150000', '2');
INSERT INTO role (title, salary, department_id) VALUES ('Software Engineer', '120000', '2');
INSERT INTO role (title, salary, department_id) VALUES ('Accountant', '125000', '3');
INSERT INTO role (title, salary, department_id) VALUES ('Legal Manager', '250000', '4');
INSERT INTO role (title, salary, department_id) VALUES ('Lawyer', '190000', '4');

USE employee_db;
SELECT * FROM role;
USE employee_db;
SELECT title
    FROM role
    ORDER BY department_id ASC, title ASC;

USE employee_db;
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Don', 'Draper', 3, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Babe', 'Ruth', 1, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Jackie', 'Chan', 2, 2);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Michael', 'Scott', 4, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Billy', 'Mays', 5, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Chuck', 'Norris', 6, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Paul', 'Allen', 7, 6);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Mickey', 'Mouse', 3, 3);

USE employee_db;
SELECT * FROM employee;


USE employee_db;
SELECT e.id, CONCAT(e.first_name, ' ', e.last_name) AS 'Employee', d.name AS 'Department', r.title, r.salary, CONCAT(m.first_name, ' ', m.last_name) AS 'Manager'
    FROM employee e
        LEFT JOIN employee m ON m.id = e.manager_id
        LEFT JOIN Role r ON e.role_id = r.id
        LEFT JOIN Department d ON d.id = r.department_id
    ORDER BY e.id ASC;


USE employee_db;
SELECT d.name, CONCAT(e.first_name, ' ', e.last_name) AS 'Employee', r.title, d.name, r.salary, CONCAT(m.first_name, ' ', m.last_name) AS 'Manager'
    FROM employee e
        LEFT JOIN employee m ON m.id = e.manager_id
        JOIN Role r ON e.role_id = r.id
        JOIN Department d ON d.id = r.department_id
    ORDER BY d.name ASC;


USE employee_db;
SELECT IFNULL(CONCAT(m.first_name, ' ', m.last_name), '') AS 'Manager', CONCAT(e.first_name, ' ', e.last_name) AS 'Employee', d.name, r.title, d.name, r.salary
    FROM employee e
        LEFT JOIN employee m ON m.id = e.manager_id
        JOIN Role r ON e.role_id = r.id
        JOIN Department d ON d.id = r.department_id
    ORDER BY m.first_name ASC;


USE employee_db;
SELECT name AS 'Department Name'
        FROM department
        ORDER BY name ASC;


USE employee_db;
SELECT department_id, SUM(salary)
    FROM role
    GROUP BY department_id;

USE employee_db;
SELECT department_id, salary
    FROM role;

USE employee_db;
SELECT e.id AS 'Employee ID', d.name AS 'Department', d.id AS 'Department ID', r.title AS 'Title', r.salary AS 'Salary'
    FROM employee e
        JOIN Role r ON e.role_id = r.id
        JOIN Department d ON d.id = r.department_id
    ORDER BY d.id ASC;

USE employee_db;
select role_id from employee;

USE employee_db;
SELECT d.name AS 'Department', CONCAT(e.first_name, ' ', e.last_name) AS 'Employee', r.title, r.salary, CONCAT(m.first_name, ' ', m.last_name) AS 'Manager'
    FROM employee e
        LEFT JOIN employee m ON m.id = e.manager_id
        JOIN Role r ON e.role_id = r.id
        JOIN Department d ON d.id = r.department_id
    ORDER BY d.name ASC;

USE employee_db;
SELECT role_id, COUNT(role_id)
    FROM employee
    GROUP BY role_id
    HAVING COUNT(role_id) > 0;


SELECT 
    email, 
    COUNT(email)
FROM
    contacts
GROUP BY email
HAVING COUNT(email) > 1;


USE employee_db;
UPDATE employee e
    SET
        e.role_id = ?
    WHERE
        e.id = ?;

USE employee_db; SELECT * FROM employee WHERE id = 12;

USE employee_db;
UPDATE employee e
    SET
        e.manager_id = ?
    WHERE
        e.id = ?;

USE employee_db; SELECT * FROM employee WHERE id = 12;



USE employee_db;
SELECT e.id, e.first_name, e.last_name
    FROM employee e
    ORDER BY e.first_name ASC;

USE employee_db;
SELECT r.id, r.title
    FROM role r
    ORDER BY r.title ASC;


USE employee_db;
SELECT d.id, d.name
        FROM department d
        ORDER BY d.name ASC;

USE employee_db;

USE employee_db;

use employee_db; select * from role;
use employee_db; select * from employee;
use employee_db; select * from department;

use employee_db; select * from role;
use employee_db; select * from employee;
use employee_db; select * from department;

USE employee_db;
SELECT r.id, r.title
            FROM role r
            ORDER BY r.title ASC;