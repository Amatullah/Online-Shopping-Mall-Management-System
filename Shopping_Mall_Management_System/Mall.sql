create table Location
	(zip varchar(10),
	state varchar(25),
	city varchar(25),
	primary key (zip)
	);

create table Person
	(username varchar(10) unique,
	pass_word varchar(10),
	first_name varchar(15),
	last_name varchar(20),
	email_id varchar(25),
	DOB date,
	age integer,
	phoneno numeric(10,0),
	type varchar(10)
		check (type in ('Employee', 'Customer', 'Shop_Owner')), 
	zip varchar(10),
	primary key (username),
	foreign key (zip) references Location (zip) on delete cascade
	);	

create table Salary
	(job varchar(15),
	salary numeric(8,2),
	primary key (job)
	);

create table Employee
	(username varchar(10),
	job varchar(15),
	timings varchar(15),
	primary key (username),
	foreign key (username) references Person (username) on delete cascade,
	foreign key (job) references Salary (job) on delete cascade
	);


create table Customer
	(username varchar(10),
	primary key (username),
	foreign key (username) references Person (username) on delete cascade
	);


create table Shop_Owner
	(username varchar(10),
	Shop_Name varchar(25) unique,
	primary key (username, Shop_Name),
	foreign key (username) references Person (username) on delete cascade
	);


create table Item
	(Item_ID varchar(10),
	Item_Name varchar(20),
	Shop_Name varchar(25),	
	price integer,
	primary key (Item_ID),
	foreign key (Shop_Name) references Shop_Owner (Shop_Name) on delete cascade
	);

create table Bill
	(Bill_No varchar(10),
	username varchar(10),
	Shop_Name varchar(25),
	primary key (Bill_No),
	foreign key (username) references Person (username) on delete cascade,
	foreign key (Shop_Name) references Shop_Owner (Shop_Name) on delete cascade
	);

create table Cart
	(Item_ID varchar(10),
	Bill_No varchar(10),
	quantity integer,
	primary key (Item_ID, Bill_No),
	foreign key (Item_ID) references Item (Item_ID) on delete cascade, 		
	foreign key (Bill_No) references Bill (Bill_No) on delete cascade 
	);



insert into Location values ('411007','Mrashtra','Aundh');
insert into Location values ('411005','Mrashtra','Shivajinagar');
insert into Location values ('411018','Mrashtra','Pimpri');
insert into Location values ('411027','Mrashtra','Kothrud');
insert into Location values ('411003','Mrashtra','KP');
insert into Location values ('411009','Mrashtra','Katraj');

insert into Person values ('asa_bhi','Asa123','Asa', 'Bhid', 'asa@gmail.com','1996/12/10','21','3434232','Customer','411007' );
insert into Person values ('a_sethji','Ama777','Ama', 'Seth', 'ama@gmail.com','1997/07/22','20','3849033','Customer','411005' );
insert into Person values ('AJ','909aj','Ajj', 'Jhad', 'ajj@gmail.com','1997/12/01','19','5849755','Employee','411018' );
insert into Person values ('AKS','aks97','Aks', 'Abhy', 'aksh@gmail.com','1997/05/09','20','2888383','Shop_Owner','411009' );
insert into Person values ('p_gore','101PG','Push', 'Gore', 'push@gmail.com','1997/06/17','20','5894444','Employee','411027' );
insert into Person values ('HamMoti','hamzu','Hamz', 'Moti', 'hamz@gmail.com','1997/04/01','20','1928233','Customer','411003' );
insert into Person values ('Apoo','apooSri','Apur', 'Sriv', 'apur@gmail.com','1997/02/15','20','3809384','Customer','411005' );
insert into Person values ('AbhiJ','12345abhi','Abhi', 'Jhad', 'abhi@gmail.com','1997/11/24','20','3129224','Shop_Owner','411018' );
insert into Person values ('ChiJo','chirag345','Chir', 'Josh', 'chir@gmail.com','1997/03/15','20','4485433','Employee','411027' );

insert into Salary values ('Clerk','20000');
insert into Salary values ('Watchman','10000');

insert into Employee values ('AJ','Clerk','12:00-15:00');
insert into Employee values ('p_gore','Watchman','11:00-16:00');
insert into Employee values ('ChiJo','Watchman','10:00-13:00');

insert into Customer values ('HamMoti');
insert into Customer values ('Apoo');

insert into Shop_Owner values ('AKS','Nike');
insert into Shop_Owner values ('AbhiJ','Walmart');

insert into Item values ('NA783','Shoes','Nike','350.00');
insert into Item values ('NB393','Jacket','Nike','275.55');
insert into Item values ('NC398','Basketball','Nike','550.00');
insert into Item values ('FC393','Chips','Walmart','13.25');
insert into Item values ('FR844','Bread','Walmart','55.80');
insert into Item values ('FR903','Ketchup','Walmart','66.45');

insert into Bill values ('123','asa_bhi','Nike');
insert into Bill values ('777','a_sethji','Nike');
insert into Bill values ('442','AJ','Walmart');

insert into Cart values ('NA783','123','10');
insert into Cart values ('NC398','123','4');
insert into Cart values ('FR844','442','5');
