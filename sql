create database BooksDB;
use BooksDB;
create table Books(
s_no int primary key,
Bo_title varchar(15),
Bo_author varchar(15),
Bo_gen varchar(30),
Bo_public int ,
Bo_price int);

insert into Books value(1,"Happy place","Emily Henry","Romance",2023,10000);
insert into Books value(2,"The Hidden","Lucy Score","Horror",2021,12000);
insert into Books value(3,"The Indian","Bimal Jalal","Drama",2022,11235);
insert into Books value(4,"Your Heart","Ruskin Bond","Romance",2022,1000000);
insert into Books value(5,"Hear Yourself","Prem Rewet","Romance",2021,300000);
insert into Books value(6,"the legend","Brothers","Horror",2010,2000);

create table authors(
se_no int primary key,
		    author_age int,
			author_native varchar(50),
			author_name varchar(60),
			s_no int,
		    constraint fk_s_no foreign key(s_no) references Books(s_no));
insert into authors values
(1,20,"Bombay","William",6),
(2,25,"Sidney","Zombie",1),
(3,30,"Dubai","Walter Elias Disney",2),
(4,40,"Dubai","Wright Brothers",5),
(5,45,"Virginia","Prem Rewet",3);


-------------------------------------------------

select * from Books;

select * from Books
where Bo_title like 'Life%';

delete from Books
where s_no=1;

select * from Books;

select AVG(Bo_price) from Books;

select * from Books;
select * from authors;


