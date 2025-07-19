use db_first ;

create view get_users_data
AS
select * from users;


select * from get_users_data;