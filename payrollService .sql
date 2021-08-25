CREATE DATABASE payroll_service;
 show databases;
 USE payroll_service;

 CREATE TABLE employee_payroll(
     id         INT unsigned NOT NULL AUTO_INCREMENT,
     name       VARCHAR(150) NOT NULL,
     salary     DOUBLE NOT NULL,
     1start      DATE NOT NULL,
     PRIMARY KEY      (id)
     );