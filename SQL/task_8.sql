SELECT 
    p.patient_id, 
    p.name AS patient_name,
    m.medication_name
FROM patients p
JOIN diagnoses d ON p.patient_id = d.patient_id
JOIN medications m ON d.diagnosis_id = m.medication_id
WHERE p.patient_id IN (
    SELECT d.patient_id
    FROM diagnoses d
    JOIN medications m ON d.diagnosis_id = m.medication_id
    GROUP BY d.patient_id
    HAVING COUNT(DISTINCT m.medication_name) = 1
       AND MAX(m.medication_name) = 'Insulin'
);
