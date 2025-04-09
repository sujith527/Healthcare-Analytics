SELECT 
    d.doctor_id,
    d.name AS doctor_name,
    d.specialization,
    COUNT(DISTINCT a.patient_id) AS unique_patient_count
FROM doctors d
JOIN appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.name, d.specialization
ORDER BY unique_patient_count DESC
LIMIT 10;

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

SELECT 
    p.patient_id,
    p.name AS patient_name,
    P.age,
    COUNT(a.appointment_id) AS total_visits
FROM patients p
JOIN appointments a ON p.patient_id = a.patient_id
GROUP BY p.patient_id, p.name, p.age
ORDER BY total_visits DESC
LIMIT 10;


SELECT 
    p.patient_id,
    p.name AS patient_name,
    p.age,
    COUNT(a.appointment_id) AS total_visits,
    GROUP_CONCAT(DISTINCT a.reason SEPARATOR ', ') AS visit_reasons
FROM patients p
JOIN appointments a ON p.patient_id = a.patient_id
GROUP BY p.patient_id, p.name, p.age
ORDER BY total_visits DESC
LIMIT 10;

