SELECT 
    a.appointment_id,
    a.appointment_date,
    a.reason,
    a.status,
    d.diagnosis_id,
    d.diagnosis,
    p.name AS patient_name,
    doc.name AS doctor_name
FROM appointments a
LEFT JOIN diagnoses d ON a.patient_id = d.patient_id AND a.doctor_id = d.doctor_id
LEFT JOIN patients p ON a.patient_id = p.patient_id
LEFT JOIN doctors doc ON a.doctor_id = doc.doctor_id

UNION

SELECT 
    a.appointment_id,
    a.appointment_date,
    a.reason,
    a.status,
    d.diagnosis_id,
    d.diagnosis,
    p.name AS patient_name,
    doc.name AS doctor_name
FROM diagnoses d
LEFT JOIN appointments a ON a.patient_id = d.patient_id AND a.doctor_id = d.doctor_id
LEFT JOIN patients p ON d.patient_id = p.patient_id
LEFT JOIN doctors doc ON d.doctor_id = doc.doctor_id
WHERE a.appointment_id IS NULL;
