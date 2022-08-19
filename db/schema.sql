DROP DATABASE IF EXISTS employee_db; 
CREATE DATABASE employee_db;

USE employee_db; 

CREATE TABLE departments(
    id INT AUTO_INCREMENT PRIMARY KEY, 
    deb_name VARCHAR(30) NOT NULL
);

CREATE TABLE roles (
id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(50) NOT NULL,
salary DECIMAL NOT NULL,
department_id INT NOT NULL,
FOREIGN KEY (department_id) REFERENCES departments(id)
);

CREATE TABLE  employees(
id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
role_id INT NOT NULL, 
manager_id INT,
FOREIGN KEY (role_id) REFERENCES roles(id),
FOREIGN KEY (manager_id) REFERENCES employees(id)
);