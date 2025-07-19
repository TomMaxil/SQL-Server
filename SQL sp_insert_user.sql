create procedure sp_insert_user 
@id smallint,@uname varchar(120),@uemail varchar(50),
@uaddress varchar(200),@age tinyint,@gender varchar(25),@city varchar(20)
AS
Begin
Insert into users values 
(@id,@uname,@uemail,@uaddress,@age,@gender,@city)
End

execute sp_insert_user
@id = 11,
@uname = 'Akmal',
@uemail = 'akmal@gmail.com',
@uaddress = 'Baldia Town',
@age = 28,
@gender = 'Male',
@city = 'Sindh'
