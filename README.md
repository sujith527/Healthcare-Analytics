
# SQL Healthcare Analysis Project
## Overview

This project demonstrates SQL-based data analysis on a healthcare database. It covers various real-time scenarios using SQL joins, subqueries, window functions, date/time functions, and more. The aim is to explore, analyze, and extract meaningful insights from patient, appointment, diagnosis, and doctor data.
## Agenda

    Perform complex queries on a healthcare dataset

    Understand and apply different types of SQL Joins

    Utilize advanced SQL functions (Window, Date, Aggregate, etc.)

    Extract actionable insights from the data

## Tasks and Learning Outcomes
### 1. Inner and Equi Joins

📝 Task: Fetch details of all completed appointments, including patient’s name, doctor’s name, and specialization.
🎯 Learning: Understanding Inner Joins and applying filtering conditions.

### 2. Left Join with Null Handling

📝 Task: Retrieve all patients who have never had an appointment.
🎯 Learning: Using Left Joins to find unmatched records and handle NULL values.
###3. Right Join and Aggregate Functions

📝 Task: Find the total number of diagnoses for each doctor, including those who haven't diagnosed any patients.
🎯 Learning: Combining Right Join with COUNT() aggregate function.

### 4. Full Join for Overlapping Data

📝 Task: Identify mismatches between the appointments and diagnoses tables.
🎯 Learning: Understanding Full Joins and data consistency checks.

### 5. Window Functions

📝 Task: Rank patients of each doctor based on the number of appointments.
🎯 Learning: Use of RANK() and DENSE_RANK() window functions.

### 6. Conditional Expressions

📝 Task: Categorize patients into age groups (18-30, 31-50, 51+).
🎯 Learning: Mastery in CASE statements for conditional logic.

### 7. Numeric and String Functions

📝 Task: Display names in uppercase for patients whose contact number ends with "1234".
🎯 Learning: Application of UPPER(), LIKE, and pattern matching.

### 8. Subqueries for Filtering

📝 Task: Identify patients who were only prescribed "Insulin".
🎯 Learning: Usage of Subqueries for complex filters and grouping.

### 9. Date and Time Functions

📝 Task: Calculate average medication duration per diagnosis.
🎯 Learning: Use of DATEDIFF() and understanding start/end dates.

### 10. Complex Joins and Aggregation

📝 Task: Identify the doctor with the most unique patients.
🎯 Learning: Combining JOINs, GROUP BY, and COUNT(DISTINCT).

## 📌 Final Takeaway

From this project, I’ve learned to:

    Write optimized SQL queries

    Extract insights using joins and conditions

    Apply real-world logic to healthcare datasets

    Categorize and analyze patients, doctors, and medical histories
