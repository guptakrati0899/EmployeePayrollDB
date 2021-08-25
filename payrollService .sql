CREATE DATABASE payroll_service;
 show databases;
 USE payroll_service;

 CREATE TABLE employee_payroll(
     id         INT unsigned NOT NULL AUTO_INCREMENT,
     name       VARCHAR(150) NOT NULL,
     salary     DOUBLE NOT NULL,
     start      DATE NOT NULL,
     PRIMARY KEY      (id)
     );
     
INSERT INTO employee_payroll (name, salary, start) VALUES
 ('Krati', 400000.0, '2021-02-08'),
('Nishu', 500000.0, '2021-03-08'),
('Shreya', 600000.0, '2021-04-08');

SELECT * FROM employee_payroll;

SELECT salary FROM employee_payroll WHERE name = 'Krati';
Select * FROM employee_payroll
   WHERE start BETWEEN CAST('2021-02-08' AS DATE) AND DATE(NOW());
   
 ALTER TABLE employee_payroll ADD gender CHAR(6) AFTER name;
 UPDATE employee_payroll set gender = "female" WHERE name ='Krati' or name = 'Nishu' or name = 'Shreya';
SELECT *FROM employee_payroll;

SELECT AVG(salary) FROM employee_payroll WHERE gender = 'female' GROUP BY gender;
SELECT gender , COUNT(name) FROM employee_payroll GROUP BY gender;
 SELECT gender , SUM(name) FROM employee_payroll GROUP BY gender;
SELECT gender, SUM(salary) FROM employee_payroll GROUP BY gender;


ALTER TABLE employee_payroll ADD phone VARCHAR(255) AFTER name;
ALTER TABLE employee_payroll ADD address VARCHAR(255) AFTER phone;
ALTER TABLE employee_payroll ADD department VARCHAR(255) AFTER address;
describe employee_payroll;
select * from employee_payroll;

UPDATE employee_payroll set phone = '8787667879' WHERE id = 2;
UPDATE employee_payroll set phone = '9877656545' WHERE id = 1;
UPDATE employee_payroll set phone = '7876566656' WHERE id = 3;
UPDATE employee_payroll set address = 'Ghaziabad' WHERE id = 1;
UPDATE employee_payroll set address = 'Kanpur' WHERE id = 2;
UPDATE employee_payroll set address = 'Laxmi Nagar' WHERE id = 3;
UPDATE employee_payroll set department = 'Content' WHERE id = 1;
UPDATE employee_payroll set department = 'Content' WHERE id = 2;
UPDATE employee_payroll set department = 'Technology' WHERE id = 3;
select * from employee_payroll;
