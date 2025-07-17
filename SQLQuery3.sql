create database db_second;

use db_second ;

create table users(
id int primary key identity(1,1),
uname varchar (120) not null,
email varchar (20) unique,
age int check (age>=18),
gender varchar (10),
salary int,
city varchar (50)
)

insert into users values ('Bilal','bilal@gmail.com',19,'Male',26000,'Karachi');
insert into users values ('Ayesha', 'ayesha123@gmail.com', 22, 'Female', 30000, 'Lahore');
insert into users values ('Usman', 'usman45@gmail.com', 25, 'Male', 35000, 'Islamabad');
insert into users values ('Sana', 'sana_khan@gmail.com', 21, 'Female', 28000, 'Rawalpindi');
insert into users values ('Ahmed', 'ahmed92@gmail.com', 27, 'Male', 40000, 'Faisalabad');
insert into users values ('Hira', 'hira.j@gmail.com', 23, 'Female', 32000, 'Multan');
insert into users values ('Zain', 'zainali@gmail.com', 24, 'Male', 37000, 'Peshawar');
insert into users values ('Mariam', 'mariam_r@gmail.com', 20, 'Female', 25000, 'Quetta');
insert into users values ('Tariq', 'tariq123@gmail.com', 26, 'Male', 39000, 'Hyderabad');
insert into users values ('Nimra', 'nimra_786@gmail.com', 22, 'Female', 31000, 'Sialkot');
INSERT INTO users VALUES ('Ali Raza', 'aliraza@gmail.com', 28, 'Male', 42000, 'Karachi');
INSERT INTO users VALUES ('Fatima Noor', 'fatimanoor@gmail.com', 24, 'Female', 31000, 'Lahore');
INSERT INTO users VALUES ('Hassan Shah', 'hassanshah@gmail.com', 30, 'Male', 46000, 'Islamabad');
INSERT INTO users VALUES ('Areeba Khan', 'areebakhan@gmail.com', 23, 'Female', 29000, 'Multan');
INSERT INTO users VALUES ('Jawad Ali', 'jawadali@gmail.com', 27, 'Male', 41000, 'Rawalpindi');
INSERT INTO users VALUES ('Mehwish Ahmed', 'mehwishahmed@gmail.com', 25, 'Female', 33000, 'Quetta');
INSERT INTO users VALUES ('Kashif Mehmood', 'kashifmehmood@gmail.com', 26, 'Male', 38000, 'Sargodha');
INSERT INTO users VALUES ('Laiba Ansari', 'laibaansari@gmail.com', 21, 'Female', 27000, 'Hyderabad');
INSERT INTO users VALUES ('Imran Qureshi', 'imranqureshi@gmail.com', 29, 'Male', 45000, 'Peshawar');
INSERT INTO users VALUES ('Zoya Aslam', 'zoyaaslam@gmail.com', 22, 'Female', 30000, 'Gujranwala');

select * from users;

select * from users where city = 'Karachi';

select COUNT(city) as TotalCity from users where city = 'Lahore';

select COUNT(gender) as TotalCount from users where gender = 'Male';

select COUNT(gender) as TotalGender from users where gender = 'Female';

select Distinct city from users;

select Distinct gender from users;

select SUM(salary) as KarachiSalary from users where city = 'Karachi';

select SUM(salary) as LahoreSalary from users where city = 'Lahore';

select MIN(salary) as MinSalary from users;

select MAX(salary) as Maxsalary from users;

select AVG(salary) as AvgSalary from users;

select AVG(age) as AvgAge from users;

select * from users order by salary; 

select * from users order by salary DESC;

select city,COUNT(*) as CityCount from users group by city; 

select Top 10 * from users;

select Top 7 * from users order by id DESC;

select COUNT(city) as CityCount from users 
group by city
having city = 'Karachi';

select city ,SUM(salary) as AVGSalary from users 
group by city 
having SUM(salary) > 25000;


