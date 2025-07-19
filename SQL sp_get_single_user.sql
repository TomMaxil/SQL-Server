create procedure sp_get_single_user
@Userid int
AS
Begin
select * from users where id = @Userid;
End

exec sp_get_single_user @Userid =10;