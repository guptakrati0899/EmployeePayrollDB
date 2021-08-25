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

SELECT * FROM address_book;

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
