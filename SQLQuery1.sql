create database db_first;

use db_first;

create table users(
id smallint not null,
uname varchar (120),
uemail varchar (50) unique,
uaddress varchar (200),
age tinyint check(age>=18),
gender varchar (25),
city varchar (20) default 'Karachi'
)

insert into users values (1,'Bilal','bilal@gmail.com','abc town',19,'male','Islamabad');
INSERT INTO users VALUES (2, 'Ayesha', 'ayesha123@gmail.com', 'Model Town', 22, 'female', 'Lahore');
INSERT INTO users VALUES (3, 'Usman', 'usman_khan@gmail.com', 'Gulshan-e-Iqbal', 28, 'male', 'Karachi');
INSERT INTO users VALUES (4, 'Fatima', 'fatima.ali@gmail.com', 'Bahria Town', 25, 'female', 'Rawalpindi');
INSERT INTO users VALUES (5, 'Ahmed', 'ahmed_r@hotmail.com', 'DHA Phase 5', 30, 'male', 'Lahore');
INSERT INTO users VALUES (6, 'Zara', 'zara789@yahoo.com', 'Satellite Town', 20, 'female', 'Quetta');
INSERT INTO users VALUES (7, 'Hassan', 'hassan.mir@gmail.com', 'Johar Town', 24, 'male', 'Multan');
INSERT INTO users VALUES (8, 'Laiba', 'laiba_2000@gmail.com', 'F-10 Sector', 19, 'female', 'Islamabad');
INSERT INTO users VALUES (9, 'Ali', 'ali_butt@gmail.com', 'G-9 Markaz', 26, 'male', 'Islamabad');
INSERT INTO users VALUES (10, 'Noor', 'noor_fatima@gmail.com', 'Askari 10', 21, 'female', 'Lahore');

select * from users;

delete from users where uname = 'Fatima'; 
select * from users where city = 'karachi';
select * from users where city IN('Lahore','Islamabad');
select * from users where age between 20 and 25;
select * from users where uname like 'a%';
select * from users where uname like '%a';
select * from users where uname like '%a_';
select * from users where uname like 'a%a';
select * from users where uname like '%ar%';
select * from users where uname like '%ay%';
select * from users where contains(city,'Karachi');