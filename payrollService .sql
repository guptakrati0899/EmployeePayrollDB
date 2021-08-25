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
