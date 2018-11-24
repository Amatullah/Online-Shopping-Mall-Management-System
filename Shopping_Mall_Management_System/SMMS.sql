create table Person
	(ID numeric(6,0) check (ID > 100000),
	username varchar(10) unique,
	pass_word varchar (10),
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
	foreign key (S_ID) references Shop (Shop_ID) on delete cascade
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
	price numeric(7,0) check (price > 0),
	quantity integer,
	S_ID varchar(5),
	primary key (Item_ID),
	foreign key (S_ID) references Shop (Shop_ID) on delete cascade
	);


