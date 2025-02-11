# Titanic Database Exploration (SQL) 🚢  

This project explores the Titanic dataset using SQL to analyze survival rates, passenger demographics, and other key insights.  

## 📌 Features  
✔️ SQL-based data exploration  
✔️ Queries for survival analysis, passenger demographics, and fare distributions  
✔️ Structured dataset insights  

## 🔍 Dataset  
- **Source:** The dataset is based on the Titanic passenger records.  
- **Format:** CSV or SQL database  

## ⚙️ Technologies Used  
- SQL (SQLite/MySQL)  
- DBeaver / MySQL Workbench (or any SQL environment)  

## 📊 Key Analysis & Queries  
1. **Survival Rate Analysis:**  
   ```sql
   SELECT survived, COUNT(*) AS total FROM titanic GROUP BY survived;

2. **Passenger Class Distribution:**
   ```sql
   SELECT pclass, COUNT(*) FROM titanic GROUP BY pclass;

3. **Gender-Based Survival Comparison:**
   ```sql
   SELECT sex, survived, COUNT(*) FROM titanic GROUP BY sex, survived;

For full analysis and results, see Titanic_Analysis_Report.pdf

## 🚀 How to Run
Download the titanic.sql or titanic.csv file.
Import it into an SQL database (e.g., MySQL, SQLite).
Run the queries in titanic_analysis.sql using your SQL environment.

## 📂 Files Included
Titanic_Analysis_Report.pdf → Full SQL analysis report with insights
titanic_analysis.sql → SQL queries used in this project
titanic.csv (if needed) → Titanic dataset
