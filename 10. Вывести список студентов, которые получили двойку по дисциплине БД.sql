use Korsakov_Kozyrev_P_36
select Students.N_zach, Students.Last_Name, Students.First_Name, Sessia.Mark,  Sessia.Discipline 
from Sessia, Students
where Students.N_zach = Sessia.N_zach and Mark = 2 and discipline = 'ад'