-- Telco Customer Churn Analysis SQL Queries
-- Author: Oleksii Shevchenko
-- Tool: Google BigQuery + Tableau
-- Description: Core queries used to prepare data for visualization in Tableau Public

-- 1. Churn rate by payment method
SELECT  
  PaymentMethod,
  ROUND(AVG(ChurnFlag) * 100, 2) AS churn_rate_percent,
  COUNT(*) AS total_customers
FROM `deep-ray-461102-k3.Telco_Customer_Churn.Telco_Customer_Churn_clean`
GROUP BY PaymentMethod
ORDER BY churn_rate_percent DESC;

-- 2. Number of churned customers by contract type
SELECT
  Contract,
  COUNT(*) AS churned_customers
FROM `deep-ray-461102-k3.Telco_Customer_Churn.Telco_Customer_Churn_clean`
WHERE ChurnFlag = 1
GROUP BY Contract
ORDER BY churned_customers DESC;

-- 3. Number of churned customers by internet service
SELECT
  InternetService,
  COUNT(*) AS churned_customers
FROM `deep-ray-461102-k3.Telco_Customer_Churn.Telco_Customer_Churn_clean`
WHERE ChurnFlag = 1
GROUP BY InternetService
ORDER BY churned_customers DESC;

-- 4. Churned customers grouped by tenure (in 6-month intervals)
SELECT
  FLOOR(tenure / 6) * 6 AS tenure_group,
  COUNT(*) AS churned_customers
FROM `deep-ray-461102-k3.Telco_Customer_Churn.Telco_Customer_Churn_clean`
WHERE ChurnFlag = 1
GROUP BY tenure_group
ORDER BY tenure_group;

-- 5. Overall churn percentage (for pie chart visualization)
SELECT
  SUM(CASE WHEN ChurnFlag = 1 THEN 1 ELSE 0 END) AS churned,
  SUM(CASE WHEN ChurnFlag = 0 THEN 1 ELSE 0 END) AS active,
  ROUND(SUM(CASE WHEN ChurnFlag = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_percent
FROM `deep-ray-461102-k3.Telco_Customer_Churn.Telco_Customer_Churn_clean`;
