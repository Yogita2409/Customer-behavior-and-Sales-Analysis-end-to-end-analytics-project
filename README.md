**End-to-End Customer & Sales Intelligence Analytics | Python, PostgreSQL & Power BI**

<img width="559" height="293" alt="image" src="https://github.com/user-attachments/assets/34c7204c-f5e6-4d66-9061-ad5b3820332c" />


## Overview

This project is an end-to-end business analytics solution built to analyze retail customer shopping behavior and transform raw transactional data into actionable business insights.

The project follows a complete analytics workflow—from data cleaning and exploratory data analysis (EDA) in Python, to SQL-based business analysis in PostgreSQL, and finally an interactive Power BI dashboard for decision-making.

The dashboard enables stakeholders to monitor customer behavior, revenue trends, product performance, subscription adoption, and customer segments through interactive visualizations and slicers.

---

## Business Problem

Retail businesses generate large volumes of customer transaction data, but transforming this information into meaningful business decisions requires structured analysis.

This project answers questions such as:

* Which product categories generate the highest revenue?
* Which products contribute the most to sales?
* Which customer segment drives the business?
* Does subscription adoption correlate with customer loyalty?
* Which age groups contribute the most revenue?
* What opportunities exist for improving customer retention and increasing revenue?

---

# Project Pipeline

```text
Customer Shopping Dataset
            │
            ▼
Python (EDA & Data Cleaning)
            │
            ▼
PostgreSQL (Business Analysis)
            │
            ▼
Power BI Dashboard
            │
            ▼
Business Insights & Recommendations
```

---

# Tech Stack

| Tool             | Purpose                                   |
| ---------------- | ----------------------------------------- |
| Python           | Data Cleaning & Exploratory Data Analysis |
| Pandas           | Data Manipulation                         |
| NumPy            | Numerical Operations                      |
| PostgreSQL       | Business Query Analysis                   |
| SQL              | Analytical Queries                        |
| Power BI         | Dashboard Development                     |
| Jupyter Notebook | EDA                                       |
| Git & GitHub     | Version Control                           |

---

# Dataset Information

* **Records:** 3,900
* **Attributes:** 18
* **Domain:** Retail Customer Shopping Behavior

The dataset contains customer demographics, purchase history, product categories, review ratings, shipping methods, payment methods, subscription status, and purchase amounts.

---

# Project Structure

```text
Customer-Sales-Intelligence/

│
├── Data/
│      customer_shopping_behavior.csv
│
├── Python/
│      Customer_behavior_EDA.ipynb
│
├── SQL/
│      customer_behavior_analysis.sql
│
├── Dashboard/
│      Customer & Sales Intelligence.pbix
│      dashboard.png
│
├── Report/
│      Customer_Behavior_Business_Report.pdf
│
└── README.md
```

---

# Data Cleaning

The dataset was prepared using Python before loading it into PostgreSQL.

The preprocessing included:

* Missing value treatment
* Category-wise median imputation for Review Rating
* Duplicate checking
* Standardizing column names
* Feature engineering

  * Age Group
  * Purchase Frequency (Days)
* Removing redundant columns
* Exporting the cleaned dataset to PostgreSQL

---

# SQL Analysis

The cleaned data was analyzed using PostgreSQL to answer business-driven questions.

Examples include:

* Revenue by Gender
* Subscriber vs Non-Subscriber Spending
* Customer Segmentation
* Revenue by Age Group
* Top Revenue Products
* Discount Analysis
* Shipping Cost Comparison
* Top Products within Each Category
* Customer Loyalty Analysis
* Product Rating Analysis

Advanced SQL concepts used:

* Common Table Expressions (CTEs)
* Window Functions
* ROW_NUMBER()
* Aggregate Functions
* GROUP BY
* CASE Statements
* Subqueries

---

# Dashboard Features

The Power BI dashboard includes:

### KPI Cards

* Total Revenue
* Average Order Value
* Number of Customers
* Average Review Rating

### Interactive Visualizations

* Revenue by Category
* Top 5 Products by Revenue
* Revenue by Age Group
* Customer Segments
* Subscription Status

### Interactive Slicers

* Subscription
* Gender
* Category
* Shipping Type
* Payment Method
* Location

# Key Business Insights

* Total Revenue reached **$233.08K** across **3.9K customers**.
* Clothing generated nearly **45% of total revenue**, making it the highest-performing product category.
* Young Adults contributed the highest revenue among all age groups.
* Nearly **80% of customers are loyal**, indicating strong customer retention.
* Only **7.3% of customers are subscribed**, highlighting a significant opportunity to improve subscription adoption.
* Revenue among the top five products is evenly distributed, reducing dependence on a single high-performing product.

---

# Business Recommendations

* Increase subscription adoption by targeting loyal and returning customers.
* Reduce dependency on the Clothing category by strengthening other product categories.
* Optimize discount strategies for products heavily reliant on promotions.
* Invest more in customer acquisition to increase the proportion of new customers.
* Expand the dashboard by incorporating additional SQL insights such as gender-wise revenue and shipping cost comparisons.

---

# Skills Demonstrated

* Data Cleaning
* Exploratory Data Analysis
* Feature Engineering
* SQL Query Writing
* Business Analytics
* Dashboard Design
* KPI Development
* Data Visualization
* Customer Segmentation
* Storytelling with Data

---

# Future Improvements

* Time-series sales analysis
* Forecasting using Machine Learning
* Customer Lifetime Value (CLV)
* RFM Analysis
* Cohort Analysis
* Predictive Customer Segmentation
* Recommendation System

---

# Repository Contents

* Python EDA Notebook
* SQL Analysis Script
* Power BI Dashboard
* Business Analytics Report
* Dashboard Screenshot
* README

---

# Author
Yogita

**Aspiring Data Analyst | Python | SQL | Power BI | Data Visualization**
