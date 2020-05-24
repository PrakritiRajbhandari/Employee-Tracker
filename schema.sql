Create Database Employee_tracker;

use Employee_tracker;

Create table Department (
department_id int primary key auto_increment,
Name varchar(30) not null
);

create table role(
role_id int primary key auto_increment,
Title varchar(30) not null,
salary decimal,
department_id int,
foreign key (department_id) references  Department(department_id) 
);

create table Employee(
employee_id INT PRIMARY KEY auto_increment,
first_name VARCHAR(30) NOT NULL ,
last_name VARCHAR(30) NOT NULL,
role_id INT,
FOREIGN KEY (role_id) REFERENCES role(role_id)
);

ALTER TABLE Employee
ADD manager_id int;

