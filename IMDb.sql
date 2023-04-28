Create table Filems
(F_id number(1) primary key not null, F_title varchar2 (100),writer varchar2(100));

create table rating 
(r_id number(3) primary key not null, r_value number(1),f_id number(3));

create table reviews
(rv_id number(3) primary key not null ,review varchar2(100),f_id number(3));

create table users
(u_id number(3) primary key not null,username varchar2(20),passwoord varchar2(10),gender varchar2(5),is_admin char(1),
e_mail varchar2(20));



insert into filems values
(1,'Super Mario Bros','Matthew Fogel');

 insert into filems values 
 (2,'John Wick: Chapter 4',' Michael Finch  ');

insert into filems values 
(3,'Dungeons & Dragons: Honor Among Thieves','Jonathan Goldstein ');

insert into filems values
(4,'My Brother Above in the Tree','Luayy El-Sayyed');

insert into filems values
(5,'Gat Saleema','Karim Youssef');

insert into filems values
(6,'The Lego Movie 2','Matthew Fogel');
insert into filems values
(7,'Minions: The Rise of Gru','Matthew Fogel');

insert into filems values
(8,'American Assassin','Michael Finch');

insert into filems values
(9,'The November Man','Michael Finch');
insert into filems values
(10,'Qabeel','Karim Youssef');
insert into filems values
(11,'Lailat Hana wa Suroor','Karim Youssef');
insert into filems values 
(12,'Spider-Man: Homecoming','Jonathan Goldstein ');

insert into filems values 
(13,'Game Night','Jonathan Goldstein ');
insert into rating values
(1,8,5);

insert into rating values
(2,5,4);
insert into rating values
(3,8,2);
insert into rating values
(4,8,3);
insert into rating values
(5,7,1);
insert into rating values
(6,9,7);
insert into rating values
(7,6,9);
insert into rating values
(8,9,11);
insert into rating values
(9,5,13);
insert into rating values
(10,4,12);
insert into reviews values 
(1,'it is an amazing film',2);
insert into reviews values 
(2,'it is so fun film',5);
insert into reviews values
(3,'it is very  super film',3);
insert into reviews values 
(4, 'it is so great film',1);

INSERT into users values
(1,'fatma','abcd123','femal','n','fatma@gmail.com');
INSERT into users values
(2,'ali','efg456','male','y','ali@yaahoo.com');
INSERT into users values
(3,'ahmed','qwe789','male','y','ahmed@gmail.com');




create or replace procedure GetRateFilm
(Film_id in number , Rate out NUMBER)
as
begin
select R.r_value into Rate
from Rating R , Filems F
where F.f_id = R.f_id and F.f_id=Film_id ;
end;


create or replace
procedure GetFilm_Titles(FT out sys_refcursor)
as
begin
  open FT for
    select f_title
    from filems;
end;
