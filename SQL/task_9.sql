SELECT
    d.diagnosis_id,
    m.medication_name,
    AVG(DATEDIFF(m.end_date, m.start_date)) AS avg_duration_days
FROM
    diagnoses d
JOIN
    medications m ON d.diagnosis_id = m.medication_id
WHERE
    m.end_date > m.start_date
GROUP BY
    d.diagnosis_id, m.medication_name;
