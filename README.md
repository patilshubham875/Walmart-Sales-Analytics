# 🛒 Walmart Sales Analysis | ELT Project

##  Project Overview

This project demonstrates an end-to-end **ELT (Extract, Load, Transform)** workflow using **Python (Pandas)** and **MySQL** to analyze Walmart sales data. Raw transaction data is extracted and validated using Python, loaded into MySQL, and transformed using SQL to generate actionable business insights. The project focuses on sales performance, customer behavior, payment methods, product profitability, and branch performance.

---

## 🎯 Business Problem Statement

Walmart generates thousands of sales transactions across multiple branches and product categories. Analyzing this data is essential to identify customer purchasing behavior, profitable product categories, branch performance, payment preferences, and revenue trends. This project transforms raw transactional data into meaningful business insights to support data-driven decision-making.

---

##  Tech Stack

* Python
* Pandas
* MySQL
* SQL
* Jupyter Notebook
* CSV Dataset

---

##  ELT Workflow

* Extract raw Walmart sales data using Python (Pandas).
* Validate and clean the dataset.
* Load cleaned data into MySQL.
* Transform data using SQL queries.
* Perform business analysis and generate insights.
* Provide business recommendations based on analytical findings.

---

##  Business Questions Solved

* Analyze payment method usage and transaction volume.
* Identify the highest-rated product category in each branch.
* Find the busiest day for every branch.
* Analyze quantity sold across payment methods and product categories.
* Calculate city-wise customer ratings.
* Rank product categories by total profit.
* Identify the most preferred payment method in each branch.
* Analyze transactions by Morning, Afternoon, and Evening shifts.
* Identify branches with the highest year-over-year revenue decline.

---

##  Key Insights

* Credit Card was the most preferred payment method with **4,257 transactions** and **9,567 units sold**.
* Health and Beauty received the highest average customer ratings.
* WALM009 recorded the highest number of transactions (**42**) on Sunday.
* Home and Lifestyle was the top-selling category across all payment methods.
* Fashion Accessories generated the highest profit (**192,314**).
* The Afternoon shift (12 PM–6 PM) recorded the highest number of transactions.
* WALM045 experienced the largest year-over-year revenue decline.

---

##  Business Recommendations

* Promote credit card offers to increase customer spending.
* Expand the Health and Beauty product range to leverage customer satisfaction.
* Increase staffing and inventory during Sunday peak hours.
* Maintain sufficient stock for Home and Lifestyle products.
* Focus marketing campaigns on Fashion Accessories to maximize profitability.
* Allocate more staff during afternoon peak hours.
* Investigate and improve sales performance at WALM045.

---

##  Repository Structure

```text
├── Walmart.csv                 # Raw dataset
├── PROJECT - WALMART.ipynb     # Python extraction & validation
├── Walmart project.sql         # SQL queries and analysis
├── README.md                   # Project documentation
```

---

##  Skills Demonstrated

* Data Extraction using Python
* Data Cleaning with Pandas
* SQL Data Transformation
* Aggregate Functions
* Window Functions
* CASE Statements
* CTEs
* Business Analytics
* Retail Sales Analysis
* ELT Pipeline Design

---

##  Learning Outcome

This project demonstrates how Python and SQL can be combined to build an end-to-end ELT pipeline that converts raw retail sales data into meaningful business insights for data-driven decision-making.
