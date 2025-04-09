SELECT 
	patient_id,
	UPPER(name) as name,
    age,
    gender,
    address,
    contact_number
FROM patients
WHERE contact_number LIKE  '%1234';