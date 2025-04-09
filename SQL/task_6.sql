SELECT
    CASE
        WHEN age < 18 THEN 'MINOR'
        WHEN age BETWEEN 18 AND 30 THEN 'YOUNG'
        WHEN age BETWEEN 31 AND 50 THEN 'YOUNG OLD'
        WHEN age > 50 THEN 'GETTING OLD'
    END AS age_group,
    COUNT(*) AS total_patients
FROM patients
GROUP BY
    CASE
        WHEN age < 18 THEN 'MINOR'
        WHEN age BETWEEN 18 AND 30 THEN 'YOUNG'
        WHEN age BETWEEN 31 AND 50 THEN 'YOUNG OLD'
        WHEN age > 50 THEN 'GETTING OLD'
    END;
