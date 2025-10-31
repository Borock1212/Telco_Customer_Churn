# Telco Customer Churn Analysis

## [➡️ View the Interactive Dashboard on Tableau Public](https://public.tableau.com/views/Telco_Customer_Churn_Analysis_17617532658250/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

![Dashboard Screenshot](https://github.com/user-attachments/assets/926aa593-f267-49ef-8fc6-48b01974fc54)




## 1. Business Problem

This project analyzes a Telco customer dataset to identify the key drivers of customer churn. The primary goal is to understand *why* customers are leaving and to provide actionable recommendations to the business on how to reduce this churn and improve customer retention.

## 2. Tech Stack

* **SQL (Google BigQuery / PostgreSQL):** Used for data cleaning, transformation, exploration, and aggregation.
* **Tableau:** Used for building the final interactive dashboard and visualizing the key findings.

## 3. Analysis & Key Findings

My analysis process was straightforward, moving from the database directly to the dashboard.

### Stage 1: Data Cleaning & Preparation (SQL)
I loaded the raw dataset into a SQL database. I then performed all data cleaning and transformation, including:
* Handling missing values.
* Correcting data types (e.g., converting 'TotalCharges' to a numeric type.
* Creating a `ChurnFlag` for easier analysis in Tableau.

### Stage 2: Dashboarding & Visualization (Tableau)
Once the data was clean, I connected it to Tableau. I built 5 key worksheets to find the drivers of churn:
1.  **Churn vs Active** (Overall churn rate)
2.  **Churn by Contract** (Key Insight)
3.  **Churn by Internet Service** (Key Insight)
4.  **Churn by Payment Method** (Key Insight)
5.  **Churn by Tenure Group** (Key Insight)

## 4. Business Recommendations

Based on these findings, I recommend the following data-driven actions:

1.  **Promote Long-Term Contracts:** Proactively offer small discounts or incentives for Month-to-Month customers to upgrade to a One-Year or Two-Year plan. This will create stability and lock in customers.

2.  **Investigate Fiber Optic Issues:** The business must investigate *why* Fiber Optic customers are leaving. Is it price? Is it service stability? The company should run surveys or offer retention bonuses (like free Tech Support) to this high-value, high-churn segment.

3.  **Incentivize Automatic Payments:** Nudge customers away from "Electronic Check" and towards "Bank Transfer (automatic)" or "Credit Card (automatic)". This can be done by offering a small "auto-pay" discount, simplifying the sign-up process.

4.  **Strengthen New Customer Onboarding:** Implement a robust onboarding program for new customers, offering extra support and check-ins during their first 6 months to build loyalty and ensure they are satisfied with their service.

## 5. Project Files

* **`/sql_queries/`**: Contains the `.sql` files used for data exploration.
* **`/data/`**: Contains the `Telco_Customer_Churn_clean.csv` dataset used for the analysis.
* **`Telco_Customer_Churn_Analysis.twb`**: The Tableau Workbook file containing all worksheets and the final dashboard.
