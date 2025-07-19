create view get_students_join_data
AS
select 
students.id as StudentsID,
students.sname as StudentsName,
students.semail as StudentsEmail,
course.cname as StudentsCourse
from students join course on students.courseid = course.id; 

select * from get_students_join_data;