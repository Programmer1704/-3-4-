use Korsakov_Kozyrev_P_36
select Students.N_zach, Last_Name
from  Sessia, Students
where Students.N_zach=Sessia.N_zach and Mark = 2