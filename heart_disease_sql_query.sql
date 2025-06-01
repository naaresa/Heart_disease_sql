-- Returns first 100 rows from tout2.data_heartdisease
  SELECT * 
FROM tout2.data_heartdisease LIMIT 100;


--1. Identify records with missing or invalid cholesterol values (assumed to be 0.0, though none exist in this dataset)
SELECT id, age, sex, serum_cholesterol, heart_disease_diagnosis
FROM tout2.data_heartdisease
WHERE serum_cholesterol IS NULL OR serum_cholesterol = 0.0;


--2. Determine the prevalence of heart disease among males and females
SELECT sex, 
       COUNT(*) AS total_patients,
       SUM(CASE WHEN heart_disease_diagnosis = 'Yes' THEN 1 ELSE 0 END) AS heart_disease_count,
       ROUND(100.0 * SUM(CASE WHEN heart_disease_diagnosis = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS percentage
FROM tout2.data_heartdisease
GROUP BY sex;


--3. What is the average age of patients?
SELECT ROUND(AVG(age)::numeric, 0) AS average_age
FROM tout2.data_heartdisease;


--4. How many patients are male and female?
SELECT sex, COUNT(*) AS count
FROM tout2.data_heartdisease
GROUP BY sex;


--5. Analyze the relationship between chest pain type and heart disease diagnosis
SELECT chest_pain_type, 
       COUNT(*) AS total_patients,
       SUM(CASE WHEN heart_disease_diagnosis = 'Yes' THEN 1 ELSE 0 END) AS heart_disease_count
FROM tout2.data_heartdisease
GROUP BY chest_pain_type
ORDER BY heart_disease_count DESC;


--6. Identify patients with Typical Angina or Atypical Angina and their heart disease status
SELECT id, age, sex, chest_pain_type, heart_disease_diagnosis
FROM tout2.data_heartdisease
WHERE chest_pain_type IN ('Typical Angina', 'Atypical Angina')
ORDER BY age;

--7. Identify patients with high blood pressure (≥140 mmHg), high cholesterol (≥300 mg/dl), and high fasting blood sugar (1.0) 
SELECT id, age, sex, resting_blood_presure, serum_cholesterol, fasting_blood_sugar, heart_disease_diagnosis
FROM tout2.data_heartdisease
WHERE resting_blood_presure >= 140 
  AND fasting_blood_sugar = 1.0;


--8. Find patients with cholesterol levels between 200 and 300 
SELECT id, sex, serum_cholesterol, heart_disease_diagnosis
FROM tout2.data_heartdisease
WHERE serum_cholesterol BETWEEN 100 AND 200;


--9. Identify patients with high fasting blood sugar (1.0) and specific chest pain types
SELECT id, age, sex, chest_pain_type, fasting_blood_sugar, heart_disease_diagnosis
FROM tout2.data_heartdisease
WHERE fasting_blood_sugar = 1.0
  AND chest_pain_type IN ('Asymptomatic', 'Non-Anginal Pain')
ORDER BY age LIMIT 6;


--10. What is the minimum and maximum age of patients with heart disease?
SELECT MIN(age) AS min_age, MAX(age) AS max_age
FROM tout2.data_heartdisease
WHERE heart_disease_diagnosis = 'Yes';


--11. List the first 5 youngest patients with heart disease
SELECT id, age, sex, heart_disease_diagnosis
FROM tout2.data_heartdisease
WHERE heart_disease_diagnosis = 'Yes'
ORDER BY age ASC LIMIT 5;


--12. Find female patients with high cholesterol (≥300 mg/dl) whose chest pain type contains “Angina”
SELECT id, age, serum_cholesterol, chest_pain_type, heart_disease_diagnosis
FROM tout2.data_heartdisease
WHERE sex = 'Female'
  AND serum_cholesterol >= 300
  AND chest_pain_type LIKE '%Angina%' LIMIT 6;


--13. Find patients with normal blood pressure (<140 mmHg) and non-anginal chest pain
SELECT id, age, sex, resting_blood_presure, chest_pain_type, heart_disease_diagnosis
FROM tout2.data_heartdisease
WHERE resting_blood_presure < 140
  AND chest_pain_type NOT LIKE '%Angina%';

