SELECT * FROM health_care.doctors;

select 
	d.doctor_id,
    d.name AS doctor_name,
    d.specialization,
    COUNT(di.diagnosis_id) AS total_diagnoses
from doctors d 
right join diagnoses di 
on 
	d.doctor_id = di.doctor_id
group by
	d.doctor_id,
    d.name,
    d.specialization
order by
	total_diagnoses  desc;
