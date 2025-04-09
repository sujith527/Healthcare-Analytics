SELECT 
    d.doctor_id,
    d.name AS doctor_name,
    p.patient_id,
    p.name AS patient_name,
    COUNT(a.appointment_id) AS appointment_count,
    DENSE_RANK() OVER (PARTITION BY d.doctor_id ORDER BY COUNT(a.appointment_id) DESC) AS patient_rank
FROM appointments a
JOIN doctors d ON a.doctor_id = d.doctor_id
JOIN patients p ON a.patient_id = p.patient_id
GROUP BY d.doctor_id, d.name, p.patient_id, p.name
ORDER BY d.doctor_id, patient_rank;


SELECT 
    d.doctor_id,
    d.name AS doctor_name,
    COUNT(DISTINCT a.patient_id) AS total_patients_attended
FROM appointments a
JOIN doctors d ON a.doctor_id = d.doctor_id
GROUP BY d.doctor_id, d.name
ORDER BY total_patients_attended DESC;
