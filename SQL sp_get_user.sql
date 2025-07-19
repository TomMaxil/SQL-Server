create procedure sp_get_user AS
Begin
select * from users;
End;

execute sp_get_user;