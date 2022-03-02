use Korsakov_Kozyrev_P_36
select Students.N_zach, Last_Name, First_Name
from Sessia, Students
where Students.N_zach = Sessia.N_zach and Mark = 5 and Discipline = 'Ѕух”чет' and Discipline = '—ети'