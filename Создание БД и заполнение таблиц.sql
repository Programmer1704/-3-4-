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
('2201','�������������� ������, ���������, ������� � ����'),
('2202','������������������ �������'),
('1901','�������������� �������')
go
insert Groops values
('145','2201'),
('2921','1901'),
('3952','2202'),
('4841','2201'),
('4843','2201')
go
insert uch_plan values
('2201','��'),
('1901','�������'),
('2202','����'),
('2201','��'),
('2201','����')
go
insert Students values
('14','������','����','��������','145'),
('23','������','����','��������','2921'),
('34','�����������','���������','�������������','3952'),
('54','�������','�����','���������','4841'),
('69','������������','����������','��������������','4843')
go
insert Sessia values
('14','��','12.03.2022','5'),
('23','�������','23.03.2022','4'),
('34','����','30.03.2022','2'),
('54','��','17.03.2022','3'),
('69','����','10.03.2022','4')