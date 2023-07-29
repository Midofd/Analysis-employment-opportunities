create table Company(
id int primary key,
[name] varchar(max)
)

create table Job_type(
id int primary key,
[type] varchar(max)
)

create table Job_title(
id int primary key,
title varchar(max)
)

create table [Location](
id int primary key,
[namr] varchar(max)
)

create table Experience(
id int primary key,
[level] varchar(max)
)

create table Requirment(
id int primary key,
[name] varchar(max)
)

create table Job_offer(
id int primary key,
id_company int foreign key references company(id),
id_type int foreign key references job_type(id),
id_location int foreign key references [location](id),
id_title int foreign key references job_title(id),
id_experience int foreign key references experience(id),
Salary float
)

create table Affected_requirment(
id_requirment int foreign key references requirment(id),
id_job_offer int foreign key references job_offer(id),
primary key(id_requirment,id_job_offer)
)
