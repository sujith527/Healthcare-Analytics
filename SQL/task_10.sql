SELECT 
    d.doctor_id,
    d.name AS doctor_name,
    d.specialization,
    COUNT(DISTINCT a.patient_id) AS unique_patient_count
FROM doctors d
JOIN appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.name, d.specialization
ORDER BY unique_patient_count DESC
;
