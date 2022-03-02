create database Korsakov_Kozyrev_P_36;
go
use Korsakov_Kozyrev_P_36;
create table Spec
(kod_spec int primary key not null,
spec varchar(120) not null
)
go
create table Groops
(N_groop int primary key not null,
kod_spec int references Spec (kod_spec) not null
)
go
create table uch_plan
(kod_spec int references Spec (kod_spec) not null,
Discipline varchar(60) not null,
)
go
create table Students
(N_zach int primary key not null,
Last_Name varchar(60) not null,
First_Name varchar(60) not null,
Middl_Name varchar(60) not null,
N_groop int references Groops (N_groop) not null)
go
create table Sessia
(N_zach int references Students (N_zach) not null,
Discipline varchar(60) not null,
Date_ex date not null,
Mark int not null,
)
go
insert Spec values
('2201','Вычислительные машины, комплексы, системы и сети'),
('2202','Автоматизированные системы'),
('1901','Информационные системы')
go
insert Groops values
('145','2201'),
('2921','1901'),
('3952','2202'),
('4841','2201'),
('4843','2201')
go
insert uch_plan values
('2201','БД'),
('1901','БухУчет'),
('2202','Сети'),
('2201','БД'),
('2201','Сети')
go
insert Students values
('14','Иванов','Иван','Иванович','145'),
('23','Петров','Петр','Петрович','2921'),
('34','Александров','Александр','Александрович','3952'),
('54','Борисов','Борис','Борисович','4841'),
('69','Константинов','Константин','Константинович','4843')
go
insert Sessia values
('14','БД','12.03.2022','5'),
('23','БухУчет','23.03.2022','4'),
('34','Сети','30.03.2022','2'),
('54','БД','17.03.2022','3'),
('69','Сети','10.03.2022','4')