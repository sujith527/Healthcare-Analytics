SELECT 
    p.patient_id,
    p.name AS patient_name,
    p.age,
    p.gender,
    p.address,
    p.contact_number
FROM patients p
LEFT JOIN appointments a 
    ON p.patient_id = a.patient_id
WHERE a.appointment_id IS NULL;



