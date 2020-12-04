use edac_dbt2020;
create table Member(
Member_ID int,
Member_Name varchar(30),
Member_adress varchar(50),
Acc_Open_Date date,
Membership_Type varchar(20),
Penalty_Amount int(7)
);
create table Books(
Book_No int(6),
Book_Name varchar(30),
Author_name	Varchar(30),
Cost int(7),
Category Char(10)
);
create table Issue(
Lib_Issue_Id	int(10),
Book_No	int(6),
Member_Id	int(5),
Issue_Date	Date,
Return_date	Date
);

select * from Member;
select * from Books;
select * from Issue;

alter table Member drop column Penalty_Amount;
desc Member;

insert into Member values (1,"Richa Sharma","Pune","2005-12-10","Lifetime");
insert into Member values(2,"Garima Sen","Pune","2020-12-04","Annual" );
insert into Member values(3,"Tejas Rane","Jalgaon", "2019-08-11", "Montly");
insert into Member values(4, "Akshay Desai","Kolhapur","2020-06-09","Annual");
insert into Member values(5, "Vipul Rane","Jalgaon","2017-11-13","Lifetime");
select * from Member; 

insert into Books (Book_No, Book_Name,  Author_name, Cost, Category)
values
(101,"Let us C","Dennis Ritchie",450,"System"),
(102,"Oracle- Complete Ref","Loni",550,"Database"),
(103,"Mastering SQL","Loni",250,"Database"),
(104,"PL SQL-Ref","ScottUrman",750,"Database");
desc Books;
select * from Books;

UPDATE Books
SET Cost =300 
WHERE Book_No=103;

drop table Issue;
desc Issue;
Create table Issue(
Lib_Issue_Id int(4),
Book_No int(3),
Member_ID int(1),
Issue_Date date,
Return_Date date
);

insert into Issue(LIb_Issue_Id,Book_No,Member_Id,Issue_Date)values(7001,101,1,"2006-12-10");
insert into Issue(LIb_Issue_Id,Book_No,Member_Id,Issue_Date)values(7002,101,2,"2006-12-25");
insert into Issue(LIb_Issue_Id,Book_No,Member_Id,Issue_Date)values(7003,101,1,"2006-12-15");
insert into Issue(LIb_Issue_Id,Book_No,Member_Id,Issue_Date)values(7004,101,1,"2006-12-04");
insert into Issue(LIb_Issue_Id,Book_No,Member_Id,Issue_Date)values(7005,101,2,"2006-12-15");
insert into Issue(LIb_Issue_Id,Book_No,Member_Id,Issue_Date)values(7006,101,3,"2006-12-18");
select * from Issue;









