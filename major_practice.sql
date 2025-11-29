drop database if exists studentdb;
create database studentdb;
use studentdb;

create table student_details (SNum numeric(9,0), SName varchar(30), Major varchar(30), Standing varchar(2), Age numeric(9,0), primary key (SNum));

insert into student_details values (01, 'maria white', 'english', 'SR', 21);
insert into student_details values (02, 'charles harris', 'architecture', 'SR', 22);
insert into student_details values (03, 'susan martin', 'law', 'JR', 20);
insert into student_details values (04, 'joseph thompson', 'computer science', 'SO', 19);
insert into student_details values (05, 'christopher gracia', 'computer science', 'JR', 20);
insert into student_details values (06, 'angela martinez', 'history', 'SR', 20);
insert into student_details values (07, 'thomas robinson', 'psychology', 'SO', 18);
insert into student_details values (08, 'margaret clark', 'animal science', 'FR', 18);
insert into student_details values (09, 'juan rodriguez', 'psychology', 'JR', 20);
insert into student_details values (10, 'dorthy lewis', 'finance', 'FR', 18);
insert into student_details values (11, 'daniel lee', 'engineering engineering', 'FR', 17);
insert into student_details values (12, 'lisa walker', 'computer science', 'SO', 17);
insert into student_details values (13, 'paul hall', 'computer science', 'JR', 18);
insert into student_details values (14, 'nancy allen', 'accounting', 'JR', 19);
insert into student_details values (15, 'mark young', 'finance', 'FR', 18);
insert into student_details values (16, 'luis hernandez', 'electrical engineering', 'FR', 17);
insert into student_details values (17, 'donald king', 'mechanical engineering', 'SO', 19);
insert into student_details values (18, 'george wright', 'education', 'SR', 21);
insert into student_details values (19, 'ana lopez', 'computer engineering', 'SR', 19);
insert into student_details values (20, 'kenneth hill', 'civil engineering', 'SR', 21);
insert into student_details values (21, 'karen scott', 'computer engineering', 'FR', 18);
insert into student_details values (22, 'steven green', 'kinesiology', 'SO', 19);
insert into student_details values (23, 'betty adams', 'economics', 'JR', 20);
insert into student_details values (24, 'edward baker', 'veterinary medicine', 'SR', 21);

create table faculty (FID numeric(9,0), FName varchar(30), DepID numeric(9,0), primary key (FID));

insert into faculty values (01, 'Ivana Teach', 20);
insert into faculty values (02, 'James Smith', 68);
insert into faculty values (03, 'Mary Johnson', 20);
insert into faculty values (04, 'John Williams', 68);
insert into faculty values (05, 'Patricia Jones', 68);
insert into faculty values (06, 'Robert Brown', 12);
insert into faculty values (07, 'Linda Davis', 20);
insert into faculty values (08, 'Micheal Miller', 12);
insert into faculty values (09, 'Barbara Wilson', 12);
insert into faculty values (10, 'William Moore', 33);
insert into faculty values (11, 'Elizabeth Taylor', 11);
insert into faculty values (12, 'David Anderson', 20);
insert into faculty values (13, 'Jennifer Thomas', 11);
insert into faculty values (14, 'Richard Jackson', 33);
insert into faculty values (15, 'Ulysses Teach', 20);

create table class (CName varchar(30), Meets varchar(10), Room numeric(9,0), FID numeric(9,0), primary key (CName), foreign key (FID) references faculty(FID));

insert into class values ('data structures', 'monday', 101, 01);
insert into class values ('database systems', 'monday', 102, 02);
insert into class values ('operating system', 'monday', 103, 03);
insert into class values ('archeology', 'monday', 104, 04);
insert into class values ('aviation', 'tuesday', 105, 05);
insert into class values ('air quality engineering', 'tuesday', 106, 06);
insert into class values ('introductory latin', 'tuesday', 107, 07);
insert into class values ('american politics', 'tuesday', 108, 08);
insert into class values ('social cognition', 'wednesday', 109, 09);
insert into class values ('perceptions', 'wednesday', 201, 10);
insert into class values ('multivariate analysis', 'wednesday', 202, 11);
insert into class values ('patent law', 'wednesday', 203, 12);
insert into class values ('urban economics', 'thursday', 204, 13);
insert into class values ('organic chemistry', 'thursday', 205, 14);
insert into class values ('marketing research', 'thursday', 206, 15);
insert into class values ('seminar in american art', 'thursday', 207, 01);
insert into class values ('orbital mechanics', 'friday', 208, 02);
insert into class values ('dairy herd management', 'friday', 209, 03);
insert into class values ('communication networks', 'friday', 301, 04);
insert into class values ('optical electronics', 'friday', 302, 05);
insert into class values ('introduction to math', 'friday', 303, 06);

create table enrolled (SNum numeric(9,0), CName varchar(30), foreign key (SNum) references student_details(SNum), foreign key (CName) references class(CName));

insert into enrolled values (01, 'database systems');
insert into enrolled values (02, 'database systems');
insert into enrolled values (03, 'database systems');
insert into enrolled values (04, 'database systems');
insert into enrolled values (05, 'database systems');
insert into enrolled values (06, 'operating system');
insert into enrolled values (07, 'operating system');
insert into enrolled values (08, 'operating system');
insert into enrolled values (09, 'operating system');
insert into enrolled values (10, 'operating system');
insert into enrolled values (11, 'operating system');
insert into enrolled values (12, 'data structures');
insert into enrolled values (13, 'communication networks');
insert into enrolled values (14, 'optical electronics');
insert into enrolled values (15, 'perceptions');
insert into enrolled values (16, 'social cognition');
insert into enrolled values (17, 'american politics');
insert into enrolled values (18, 'air quality engineering');
insert into enrolled values (19, 'patent law');
insert into enrolled values (20, 'urban economics');
/*
show tables;
select * from class;
select * from enrolled;
select * from faculty;
select * from student details;
*/

# alter tables - to add columns
alter table student_details add Telephone numeric(9,0);
alter table student_details add Roll_No numeric(9,0) first;

# alter table - to modify columns
alter table student_details modify Age int;

# alter teable - drop column
alter table student_details drop Standing;

# alter table - rename table 
alter table enrolled rename enrolment;

# update table 
update student_details set Telephone = 123456789 where SNum = 01;
select * from student_details;

create table employees (Emp_ID numeric(9,0), Emp_Name varchar(30), Department varchar (10), Salary numeric (9,0), Bonus numeric (9,0), primary key (Emp_ID));

insert into employees values (1, 'mark', 'HR', 30000, 6000);
insert into employees values (2, 'miraj', 'admin', 25000, 5000);
insert into employees values (3, 'chinaya', 'HR', 50000, 9000);
insert into employees values (4, 'dilkush', 'admin', 25000, 6000);
insert into employees values (5, 'eimanual', 'account', 10000, 4000);
insert into employees values (6, 'fisal', 'account', 12000, 7000);
insert into employees values (7, 'girkshan', 'HR', 55000, 12000);
insert into employees values (8, 'milka shingh', 'HR', 58000, 10000);

# update
update employees set Emp_Name = 'milkha singh' where Emp_ID = '8';

# various select operator applications 
select Emp_ID, Bonus from employees;
select distinct Department from employees;

select Emp_ID, Emp_Name, Salary from employees where Salary = 25000;
select Emp_ID, Emp_Name, Salary from employees where Salary > 25000;
select Emp_ID, Emp_Name from employees where department != 'admin';
select Emp_ID, Emp_Name from employees where not department = 'admin';
select Emp_Name from employees where (department = 'HR' or department = 'admin') and salary > 20000;

select Emp_ID, salary + 2*bonus as total_compensation from employees where salary > 20000; # where
select Emp_ID, salary + bonus as total_compensation from employees having total_compensation > 35000; # having
# or select Emp_ID, salary + bonus as total_compensation from employees where salary + bonus > 35000;
select Emp_ID, (bonus/salary)*100 as bonus_percentage from employees;

select SNum, Age from student_details where age between 20 and 23;
select SNum, Sname, Major, Age from student_details where age not between 22 and 24 and major != 'computer science';
select SName, telephone, age from student_details where age in (20,21,22,23);
select sname, telephone, age from student_details where age in (20,21,22,23,24,25) and major != 'english' and major != 'architecture';

# like operator
select * from employees where emp_name like 'm%' and emp_name not like 'ma%';

# arithmetic operators
select emp_name, salary from employees where salary = (select MIN(salary) from employees);
select stddev(salary) from employees where salary > 7000;
select variance(salary) from employees where salary < 9000;
select count(salary) from employees;
select avg(salary) from employees;
select sum(salary) from employees;

