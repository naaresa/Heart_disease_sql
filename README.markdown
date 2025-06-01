# Heart Disease Dataset Analysis

This repository contains SQL queries for analyzing the `tout2.data_heartdisease` dataset, which includes patient information related to heart disease diagnosis. The queries explore various aspects of the dataset, such as the prevalence of heart disease, patient demographics, and clinical attributes like cholesterol levels, blood pressure, and chest pain types.

## Dataset Overview
The `tout2.data_heartdisease` table contains patient records with attributes including:
- `id`: Unique patient identifier
- `age`: Patient age
- `sex`: Patient sex (Male/Female)
- `chest_pain_type`: Type of chest pain (e.g., Typical Angina, Atypical Angina, Non-Anginal Pain, Asymptomatic)
- `resting_blood_presure`: Resting blood pressure (mmHg)
- `serum_cholesterol`: Serum cholesterol level (mg/dl)
- `fasting_blood_sugar`: Fasting blood sugar (1.0 for high, 0.0 for normal)
- `heart_disease_diagnosis`: Heart disease status (Yes/No)

## Analysis Objectives
The SQL queries in this repository aim to:
1. Assess the prevalence of heart disease across demographic groups.
2. Analyze clinical attributes and their relationships with heart disease.
3. Identify specific patient cohorts based on clinical thresholds (e.g., high cholesterol, high blood pressure).
4. Highlight patterns in chest pain types and their association with heart disease.

## Key Queries and Insights
Below is a summary of the key SQL queries and their purposes, grouped by analysis focus.

### 1. Data Quality Check
- **Query**: Checks for missing or invalid cholesterol values (e.g., 0.0 or NULL).
- **Insight**: Ensures data integrity by identifying potential anomalies in cholesterol measurements.

### 2. Prevalence of Heart Disease by Sex
- **Query**: Calculates the total number of patients, heart disease cases, and percentage of heart disease by sex.
- **Insight**: Helps understand how heart disease prevalence differs between males and females.

### 3. Average Age Analysis
- **Query**: Computes the overall average age of patients and compares the average age of patients with and without heart disease.
- **Insight**: Reveals whether heart disease is associated with older or younger age groups.

### 4. Patient Demographics
- **Query**: Counts the number of male and female patients.
- **Insight**: Provides a baseline understanding of the dataset's demographic distribution.

### 5-6. Chest Pain Type Analysis
- **Queries**:
  - Analyzes the relationship between chest pain types and heart disease diagnosis.
  - Filters patients with specific chest pain types (e.g., Typical Angina, Atypical Angina, or Non-Anginal Pain).
- **Insight**: Highlights which chest pain types are most prevalent and their association with heart disease.

### 7-9. Clinical Attributes and Heart Disease
- **Queries**:
  - Identifies patients with high blood pressure (≥140 mmHg), high cholesterol (≥300 mg/dl), and high fasting blood sugar (1.0).
  - Examines patients with cholesterol levels in specific ranges (e.g., 100–200 mg/dl) and their heart disease status.
  - Finds patients with high fasting blood sugar and specific chest pain types (Asymptomatic or Non-Anginal Pain).
- **Insight**: Pinpoints high-risk patient groups based on clinical thresholds and their heart disease outcomes.

### 10-11. Age Extremes and Heart Disease
- **Queries**:
  - Determines the minimum and maximum age of patients with heart disease.
  - Lists the youngest patients diagnosed with heart disease.
- **Insight**: Identifies the age range of heart disease patients, focusing on younger patients who may be at risk.

### 12-13. Specific Cohort Analysis
- **Queries**:
  - Identifies female patients with high cholesterol (≥300 mg/dl) and chest pain types containing "Angina."
  - Finds patients with normal blood pressure (<140 mmHg) and non-anginal chest pain.
- **Insight**: Targets specific patient cohorts to explore unique risk profiles.

## Key Findings
- **Heart Disease Prevalence**: The dataset allows for a clear comparison of heart disease prevalence between sexes, which can guide targeted interventions.
- **Chest Pain and Heart Disease**: Certain chest pain types (e.g., Typical Angina) may have a stronger association with heart disease, warranting further clinical attention.
- **High-Risk Groups**: Patients with high blood pressure, high cholesterol, and high fasting blood sugar represent a critical cohort for heart disease risk.
- **Age Patterns**: Younger patients with heart disease may indicate early-onset cases, which could be explored for genetic or lifestyle factors.

## Usage
To run these queries:
1. Ensure access to a SQL database containing the `tout2.data_heartdisease` table.
2. Execute the queries using a SQL client (e.g., PostgreSQL, MySQL).
3. Review the output to derive insights or integrate into further analyses.

## Notes
- The dataset assumes no missing or invalid cholesterol values, but a query is included to verify this assumption.
- Queries are designed to be concise and focused, with limits (e.g., LIMIT 5 or 10) applied where appropriate to manage output size.
- The analysis can be extended by combining queries or adding new ones to explore additional clinical or demographic relationships.

## License
This repository is licensed under the MIT License. Feel free to use and modify the queries for your own analysis.
