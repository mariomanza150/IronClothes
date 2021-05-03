use IronClothes;

drop procedure if exists create_user;
drop procedure if exists delete_user;
drop procedure if exists modify_user;
drop procedure if exists get_user;
drop procedure if exists validate_user;
go

create procedure create_user(@name varchar(255), @pswd varchar(255), @type varchar(255)) as
begin
	insert into users (name, type, pswd) values (@name, @type, @pswd);
end
go

create procedure delete_user(@id integer) as
begin
	delete from users where id=@id;
end
go

create procedure modify_user(@id integer, @name varchar(255), @pswd varchar(255)) as
begin
	UPDATE users SET name=@name, pswd=@pswd WHERE id=@id;
end
go

create procedure get_user(@id integer) as
begin
	select * from users where id=@id;
end
go

create procedure validate_user(@name varchar(255), @pswd varchar(255)) as
begin
	select * from users where name=@name and pswd=@pswd;
end
go

drop procedure if exists create_client;
drop procedure if exists delete_client;
drop procedure if exists modify_client;
drop procedure if exists get_client;
go

create procedure create_client(@name varchar(255), @phone varchar(255)) as
begin
	insert into client (name, phone) values (@name, @phone);
end
go

create procedure delete_client(@id integer) as
begin
	delete from client where id=@id;
end
go

create procedure modify_client(@id integer, @name varchar(255), @phone varchar(255)) as
begin
	UPDATE client SET name=@name, phone=@phone WHERE id=@id;
end
go

create procedure get_client(@id integer) as
begin
	select * from client where id=@id;
end
go

drop procedure if exists create_garment;
drop procedure if exists delete_garment;
drop procedure if exists modify_garment;
drop procedure if exists get_garment;
go

create procedure create_garment(@name varchar(255), @rate float) as
begin
	insert into garment (name, rate) values (@name, @rate);
end
go

create procedure delete_garment(@id integer) as
begin
	delete from garment where id=@id;
end
go

create procedure modify_garment(@id integer, @name varchar(255), @rate float) as
begin
	UPDATE garment SET name=@name, float=@float WHERE id=@id;
end
go

create procedure get_garment(@id integer) as
begin
	select * from garment where id=@id;
end
go

drop procedure if exists create_job;
drop procedure if exists delete_job;
drop procedure if exists modify_job;
drop procedure if exists get_job;
go

create procedure create_job(@name varchar(255), @rate float) as
begin
	insert into job (name, rate) values (@name, @rate);
end
go

create procedure delete_job(@id integer) as
begin
	delete from job where id=@id;
end
go

create procedure modify_job(@id integer, @name varchar(255), @rate float) as
begin
	UPDATE job SET name=@name, float=@float WHERE id=@id;
end
go

create procedure get_job(@id integer) as
begin
	select * from job where id=@id;
end
go

drop procedure if exists create_garment_job;
drop procedure if exists delete_job;
drop procedure if exists modify_job;
drop procedure if exists get_job;
go