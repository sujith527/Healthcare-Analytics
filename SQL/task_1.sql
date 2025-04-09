SELECT 
        a.appointment_id,
        p.name as patient_name,
        d.name as doctor_name,
        d.specialization as doc_specialization,
        a.appointment_date,
        a.reason,
        a.status
FROM appointments a 
JOIN patients p 
ON
	a.patient_id = p.patient_id
JOIN doctors d 
ON
	a.doctor_id = d.doctor_id
WHERE a.status = 'completed'
;