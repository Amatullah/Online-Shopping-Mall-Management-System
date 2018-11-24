create table Person
	(ID numeric(6,0) check (ID > 100000),
	username varchar(10),
	pass_word varchar(10),
	Aadhaar_card varchar(20),
	first_name varchar(15),
	last_name varchar(20),
	email_id varchar(25),
	DOB date,
	age integer,
	phoneno numeric(10,0),
	address varchar(50),
	primary key (ID)
	);

create table Employee
	(Emp_ID numeric(6,0),
	job varchar(15),
	salary numeric(8,2),
	timings varchar(15),
	primary key (Emp_ID),
	foreign key (Emp_ID) references Person (ID) on delete cascade
	);

create table Customer
	(Cust_ID numeric(6,0),
	pass_word varchar(20),
	primary key (Cust_ID),
	foreign key (Cust_ID) references Person (ID) on delete cascade
	);

create table Mall_Owner
	(M_Owner_ID numeric(6,0),
	salary numeric(8,2),
	pass_word varchar(20),
	primary key (M_Owner_ID),
	foreign key (M_Owner_ID) references Person (ID) on delete cascade
	);

create table Shop_Owner
	(Sh_Owner_ID numeric(6,0),
	pass_word varchar(20),
	S_ID varchar(5),
	primary key (Sh_Owner_ID),
	foreign key (Sh_Owner_ID) references Person (ID) on delete cascade,
	);

create table Shop
	(Shop_ID varchar(5),
	name varchar(20),
	type varchar(15),
	balance integer,
	primary key (Shop_ID)
	);

create table Item
	(Item_ID varchar(10),
	price integer,
	quantity integer,
	S_ID varchar(5),
	primary key (Item_ID),
	foreign key (S_ID) references Shop (Shop_ID) on delete cascade
	);

insert into Person values ('222222','asa_bhi','Asa123','Aewe222','Asa', 'Bhid', 'asa@gmail.com','1996/12/10','21','3434232','Aundh' );
insert into Person values ('555555','a_sethji','Ama777','Wddi555','Ama', 'Seth', 'ama@gmail.com','1997/07/22','20','3849033','Shivajinagar' );
insert into Person values ('999999','AJ','909aj','Rsds999','Ajj', 'Jhad', 'ajj@gmail.com','1997/12/01','19','5849755','Pimpri' );
insert into Person values ('111111','AKS','aks97','Edhe111','Aks', 'Abhy', 'aksh@gmail.com','1997/05/09','20','2888383','Katraj' );
insert into Person values ('666666','p_gore','101PG','Gerj666','Push', 'Gore', 'push@gmail.com','1997/06/17','20','5894444','Kothrud' );
insert into Person values ('888888','HamMoti','hamzu','Bdfe888','Hamz', 'Moti', 'hamz@gmail.com','1997/04/01','20','1928233','KP' );
insert into Person values ('444444','Apoo','apooSri','Pwew444','Apur', 'Sriv', 'apur@gmail.com','1997/02/15','20','3809384','Shivajinagar' );
insert into Person values ('777777','Dash','dash456','Weee777','Dash', 'Ajma', 'dash@gmail.com','1996/08/16','21','3847398','Market Yard' );
insert into Person values ('333333','AbhiJ','12345abhi','Tere333','Abhi', 'Jhad', 'abhi@gmail.com','1997/11/24','20','3129224','Pimpri' );
insert into Person values ('111222','ChiJo','chirag345','Sire121','Chir', 'Josh', 'chir@gmail.com','1997/03/15','20','4485433','Kothrud' );

insert into Employee values ('999999','Clerk','20000','12:00-15:00');
insert into Employee values ('666666','Watchman','10000','11:00-16:00');
insert into Employee values ('888888','Watchman','10000','10:00-13:00');

insert into Customer values ('444444','iamawe');
insert into Customer values ('111222','myname');
insert into Customer values ('111111','loser1');

insert into Mall_Owner values ('222222','100000','ananasa');
insert into Mall_Owner values ('55555','150000','sarama');

insert into Shop_Owner values ('777777','dash123','N101');
insert into Shop_Owner values ('333333','abhi382','F303');

insert into Shop values ('N101','Nike','Shoes','32000');
insert into Shop values ('F303','Walmart','Food','5000340');

insert into Item values ('NA783','350.00','5','N101');
insert into Item values ('NB393','275.55','9','N101');
insert into Item values ('NA287','799.99','3','N101');
insert into Item values ('NC398','550.00','4','N101');
insert into Item values ('FC393','13.25','20','F303');
insert into Item values ('FR844','55.80','60','F303');
insert into Item values ('FR903','66.45','35','F303');
insert into Item values ('FD938','15.99','43','F303');
insert into Item values ('FT384','20.00','89','F303');

