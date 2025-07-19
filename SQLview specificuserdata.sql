create view specific_user_data
AS
select uname as UserName,uemail as UserEmail,city as UserCity from users;

select * from specific_user_data;



