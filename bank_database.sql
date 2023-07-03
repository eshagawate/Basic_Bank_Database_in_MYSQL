-- Script: Bank_Database
-- Bank Database

create table Bank_Info( 
    IFSC_code varchar(15), 
    Bank_name varchar(25), 
    Branch_name varchar(25) 
);

create table Personal( 
    Id varchar(5), 
    Full_Name varchar(20), 
    Acc_NO int, 
    contact_no int, 
    citizenship varchar(10), 
    gender char(1), 
    marital_status varchar(10), 
    constraint Customer_Id_PK primary key(Id), 
    constraint Acc_NO_UK unique (Acc_NO) 
);

create table Personal_Reference( 
    Ref_Id varchar(5), 
    Ref_name varchar(20), 
    Ref_Acc_NO int, 
    Relation varchar(25), 
    constraint Customer_Id_FK foreign key(Ref_Id) REFERENCES Personal(Id), 
    constraint Ref_Acc_NO_PK primary key(Ref_Acc_NO)  
);

desc Personal


desc Personal


desc Personal


desc Personal


desc Personal


desc Personal


desc Personal


Insert into Personal values(1,'Esha Gawate',45,190,'Indian','F','Commit');

Insert into Personal values(2,'Eshika Saraf',1778,086,'Indian','F','Single');

Insert into Personal values(3,'Ritu Sharma',758,110,'Indian','M','Commit');

Insert into Personal values(4,'Upal Selokar',4578,520,'Indian','F','Divorce');

desc Personal_Reference 


desc Personal_Reference 


Insert into Personal_Reference values(1,'Devendra Gawate',1478948,'Father');

Insert into Personal_Reference values(2,'Varsha Saraf',1653678,'Mother');

Insert into Personal_Reference values(3,'Chavi Gawate',14545678,'Sister');

desc Personal_Reference 


Insert into Personal_Reference values(4,'Priyanka Gawate',1595678,'Mother-in-law');

desc Bank_info 


Insert into Bank_Info values('1241','BOI','Nagpur');

Insert into Bank_Info values('4564','Shikshak Sahakari Bank','Yerkheda');

Insert into Bank_Info values('7894','Axis Bank','Ranala');

desc Bank_info 


Insert into Bank_Info values('1234','SBI','Kamptee');

Insert into Bank_Info values('1241','BOI','Nagpur');

Insert into Bank_Info values('4564','Shikshak Sahakari Bank','Yerkheda');

Insert into Bank_Info values('7894','Axis Bank','Ranala');

select * from Personal join Personal_Reference on Personal.Id = Personal_Reference.Ref_Id;

