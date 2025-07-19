create table tbl_students(
id int identity(0,1),
sname varchar (120),
semail varchar (50)
)

create index students_id_index on
tbl_students(id);

drop index tbl_students.students_id_index;

create clustered index students_id_index on
tbl_students(id);

create nonclustered index students_email_index on
tbl_students(semail);

