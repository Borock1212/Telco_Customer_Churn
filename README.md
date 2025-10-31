# Telco Customer Churn Analysis

## [➡️ View the Interactive Dashboard on Tableau Public](https://public.tableau.com/views/Telco_Customer_Churn_Analysis_17617532658250/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

![Dashboard Screenshot](https://github.com/use-attachments/assets/c4d5c195-2df9-4fd6-a800-0b8a212f5f95f)


## 1. Business Problem

This project analyzes a Telco customer dataset to identify the key drivers of customer churn. The primary goal is to understand *why* customers are leaving and to provide actionable recommendations to the business on how to reduce this churn and improve customer retention.

## 2. Tech Stack

* **SQL (Google BigQuery / PostgreSQL):** Used for initial data exploration, filtering, and aggregation.
* **Python (Pandas & Matplotlib):** Used for data cleaning, transformation, and initial exploratory data analysis (EDA).
* **Tableau:** Used for building the final interactive dashboard and visualizing the key findings.

## 3. Analysis & Key Findings

[cite_start]By analyzing the data and visualizing it in Tableau[cite: 207], I uncovered four major insights:

* **Insight 1: Contract Type is the Biggest Factor.**
    [cite_start]The 'Customer Churn by Contract' analysis shows that customers on a **Month-to-Month contract** churn at a significantly higher rate than those on One-Year or Two-Year contracts[cite: 178].

* **Insight 2: Internet Service Matters.**
    Customers with **Fiber Optic** internet service have the highest churn rate among all internet service types (Fiber Optic, DSL, or No Internet)[cite: 184]. This suggests a potential issue with price, reliability, or competition for this specific service.

* **Insight 3: Inconvenient Payments Lead to Churn.**
    The 'Customer Churn by Payment Method' chart clearly indicates that customers who pay via **Electronic Check** are far more likely to leave[cite: 192].

* **Insight 4: New Customers are at High Risk.**
    The 'Churn by Tenure Group' analysis reveals that the majority of churn occurs within the **first 6-12 months** of a customer's lifecycle[cite: 200].

## 4. Business Recommendations

Based on these findings, I recommend the following data-driven actions:

1.  **Promote Long-Term Contracts:** Proactively offer small discounts or incentives for Month-to-Month customers to upgrade to a One-Year or Two-Year plan. This will create stability and lock in customers.

2.  **Investigate Fiber Optic Issues:** The business must investigate *why* Fiber Optic customers are leaving. Is it price? Is it service stability? The company should run surveys or offer retention bonuses (like free Tech Support) to this high-value, high-churn segment.

3.  **Incentivize Automatic Payments:** Nudge customers away from "Electronic Check" and towards "Bank Transfer (automatic)" or "Credit Card (automatic)". This can be done by offering a small "auto-pay" discount, simplifying the sign-up process.

4.  **Strengthen New Customer Onboarding:** Implement a robust onboarding program for new customers, offering extra support and check-ins during their first 6 months to build loyalty and ensure they are satisfied with their service.

## 5. Project Files

* **`/sql_queries/`**: Contains the `.sql` files used for data exploration.
* **`/data/`**: Contains the `Telco_Customer_Churn_clean.csv` dataset used for the analysis[cite: 53].
* [cite_start]**`Telco_Customer_Churn_Analysis.twb`**: The Tableau Workbook file containing all worksheets and the final dashboard[cite: 52].
