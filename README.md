
# End-to-End Customer Churn Analysis (SQL, Python, Power BI)

### https://app.powerbi.com/groups/dc3f4dcf-3a16-4f02-8302-60857ec16756/reports/c6a18085-3214-411b-b6b9-3f1d0e796609/80dad15d6be3a77da530?experience=power-bi

## Project Overview
This project analyzes customer churn behavior in a banking environment using an end-to-end data analytics pipeline. The objective was to identify key drivers of customer attrition and provide actionable recommendations to improve retention.
The dataset was initially split across multiple tables and contained inconsistencies such as duplicate records, inconsistent categorical values, and formatting issues. To address this, SQL was used for data cleaning and transformation, Python was used for exploratory data analysis and feature engineering, and Power BI was used to design an interactive dashboard.
The final solution delivers a decision-support dashboard that highlights churn patterns across demographics, customer behavior, and financial attributes

# Business Objective
The primary objectives of this analysis were to:
- Measure overall customer churn rate 
-	Identify high-risk customer segments 
-	Analyze the impact of demographics, geography, and activity on churn 
-	Understand behavioral and financial drivers of customer attrition 
-	Provide actionable insights to improve customer retention 

# Steps Followed
#### Phase 1: SQL (Data Cleaning & Preparation)
- Imported raw datasets into a relational database and created structured tables 
- Performed data inspection to identify missing values, duplicates, and inconsistencies 
-	Standardized numeric columns by removing symbols and converting to proper data types 
- Identified and removed duplicate customer records to ensure uniqueness 
-	Standardized categorical values (e.g., geography labels) for consistent grouping 
-	Joined datasets using CustomerId to create a clean, analysis-ready master table 

#### Phase 2: Python (EDA & Feature Engineering)
-	Loaded the cleaned dataset into Pandas for analysis 
-	Conducted exploratory data analysis to understand distributions and patterns 
-	Created new features such as Age Groups to improve segmentation 
-	Performed churn segmentation analysis by comparing churned vs retained customers 
-	Analyzed churn patterns across: 
    - Geography 
    - Gender 
    - Customer activity 
    - Number of products 
- Exported the processed dataset for visualization 

#### Phase 3: Power BI (Dashboard Development)
-	Imported the processed dataset into Power BI 
-	Developed key performance indicators (KPIs):
    -	Total Customers
      ```
      Total Customers = COUNT(bank_analysis[CustomerId])
      ```
    -	Churned Customers
      ```
      Churned Customers = 
                CALCULATE(
                COUNTROWS(bank_analysis),
                bank_analysis[Status] = "Churned"
            )
      ```
    -	Churn Rate (%)
      ```
      Churn Rate = DIVIDE(
                [Churned Customers],
                [Total Customers]
           )
      ```
    -	Average Credit Score
      ```
      Average Credit Score = AVERAGE(bank_analysis[CreditScore])
      ```
    -	Average Balance
      ```
      Average Balance = AVERAGE(bank_analysis[Balance])
      ```
- Implemented key visualizations: 
    -	Churn Rate by Geography 
    -	Churn Rate by Age Group 
    -	Churn Rate by Customer Activity 
    -	Average Balance (Churned vs Retained) 
    -	Customer distribution by Gender and Status 
- Added slicers for dynamic filtering: 
    -	Geography 
    -	Gender 
    -	Credit Card ownership 
    -	Number of products 
    -	Tenure 
- Incorporated a recommendation section to support decision-making 


### **Dashboard Layout Design:** 
- Structured the report layout to prioritize KPIs at the top, followed by trend analysis and detailed breakdowns, ensuring logical flow and readability.
- The report was then published to Power BI Service.
<img width="472" height="283" alt="Image" src="https://github.com/user-attachments/assets/4eae6b3d-efd8-40f8-baf5-78bbc890d9b7" />


# Snapshot of Dashboard (Power BI Service)
<img width="1906" height="932" alt="Image" src="https://github.com/user-attachments/assets/5ec10b3f-0c74-4d12-b319-e8215393b94f" />

# Report Snapshot (Power BI DESKTOP) 
<img width="1308" height="733" alt="Image" src="https://github.com/user-attachments/assets/c2b6d4e7-7eef-4518-8613-9b0cdd25780d" />


# Key Insights & Analytical Findings
### Geographic Trends
-	Germany has the highest churn rate (~32%) 
-	France and Spain show significantly lower churn \
**Insight:** Customer attrition is regionally concentrated, requiring targeted retention strategies

### Demographic Insights
-	Older customers exhibit the highest churn (~37%) 
-	Younger customers show significantly lower churn \
**Insight**: Churn increases with age, indicating possible dissatisfaction or changing financial needs

### Customer Behavior
-	Inactive customers churn significantly more than active customers \
**Insight:** Customer engagement is a major driver of retention.

### Financial Behavior
- Churned customers have higher average balances than retained customers \
**Insight:** High-value customers are at risk, increasing the financial impact of churn

### Gender Analysis
- Minimal variation in churn across gender \
**Insight:** Gender is not a significant driver of churn

# Business Recommendations
Based on the analysis:
-	Prioritize retention efforts in high-risk regions (e.g., Germany) 
-	Develop targeted strategies for older customer segments 
-	Increase engagement initiatives for inactive customers 
-	Implement retention programs for high-balance customers 
-	Enhance customer experience and loyalty programs 

# Technical Skills Demonstrated
- **SQL:** Data cleaning, transformation, joins, standardization 
-	**Python (Pandas):** EDA, feature engineering, aggregation 
-	**Power BI:** Dashboard design, DAX measures, data modeling 
-	**Data Analysis:** Segmentation and insight generation 
-	**Data Storytelling:** Translating data into actionable business recommendations 







