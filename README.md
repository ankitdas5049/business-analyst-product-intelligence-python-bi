# 🛒 Amazon Product Analytics: Pricing Strategy & Category Performance
### End-to-End Product Analytics using Python, PostgreSQL & Power BI
---

# 📌 Project Overview

This project presents a comprehensive end-to-end Product Analytics solution developed using Python, PostgreSQL, and Power BI. The objective is to analyse a large-scale Amazon Marketplace dataset to uncover actionable business insights related to product pricing, customer ratings, demand, discounts, bestseller performance, and category-level trends.

The project follows a complete analytics workflow—from data cleaning and feature engineering to exploratory data analysis (EDA), SQL-based business analysis, and interactive Power BI dashboard development.

---

# 🎯 Business Objective

The primary objective of this project is to help marketplace managers, pricing analysts, and category managers answer critical business questions such as:

- Which product categories generate the highest demand?
- Which categories command premium pricing?
- Do discounts influence bestseller performance?
- Are expensive products rated better?
- Which categories offer the greatest business opportunities?
- How is product demand distributed across different pricing segments?

---

# 📂 Dataset Information

- **Dataset:** Amazon Marketplace Products
- **Total Records:** 1.4+ Million
- **Total Features:** 19
- **Data Type:** Structured Product Data

### Features Included

- Product Information
- Product Category
- Selling Price
- List Price
- Customer Rating
- Reviews
- Bestseller Status
- Monthly Demand
- Discount Percentage
- Price Segmentation
- Rating Categories
- Demand Categories

---

# 🛠️ Technology Stack

| Tool | Purpose |
|------|----------|
| Python | Data Cleaning, Feature Engineering, EDA |
| Pandas | Data Manipulation |
| NumPy | Numerical Analysis |
| Matplotlib | Data Visualization |
| PostgreSQL | Business Analytics using SQL |
| Power BI | Interactive Dashboard Development |
| Git & GitHub | Version Control & Project Hosting |

---

# 📋 Project Workflow

```text
Raw Dataset
      │
      ▼
Data Cleaning
      │
      ▼
Feature Engineering
      │
      ▼
Exploratory Data Analysis
      │
      ▼
Business SQL Analysis
      │
      ▼
Power BI Dashboard
      │
      ▼
Business Insights
```

---

# 🧹 Data Cleaning

The following preprocessing steps were performed:

- Removed unnecessary columns
  - Product URL
  - Image URL
  - Product Title
- Removed duplicate records
- Checked missing values
- Corrected data types
- Standardised column names
- Prepared clean dataset for analysis

---

# ⚙️ Feature Engineering

Several analytical features were created to support business intelligence reporting.

### Engineered Features

- Price Band
- Rating Category
- Discount Category
- Bestseller Label
- Demand Category
- Price Premium Classification
- Discount Flag
- Value Index
- Discount Amount

---

# 📊 Exploratory Data Analysis

EDA was performed to understand product behaviour and marketplace trends.

### Analysis Performed

- Product Price Distribution
- Rating Distribution
- Discount Analysis
- Bestseller Analysis
- Product Demand Analysis
- Category Performance Analysis
- Price vs Rating Relationship
- Price vs Demand Analysis
- Outlier Detection
- Correlation Analysis

---

# 🗄️ SQL Business Analysis

A set of business-focused SQL queries were developed to answer real-world marketplace questions.

### Business Analysis Includes

- Marketplace KPIs
- Pricing Analysis
- Category Performance
- Customer Satisfaction
- Product Demand
- Bestseller Analysis
- Discount Strategy

### Advanced SQL Includes

- Common Table Expressions (CTEs)
- Window Functions
- Ranking Functions
- ROW_NUMBER()
- RANK()
- NTILE()
- Aggregation & Business KPIs

---

# 📈 Power BI Dashboard

The project includes three interactive dashboards designed for executive-level business reporting.

## Dashboard 1 — Executive Overview

Features:

- Marketplace KPIs
- Price Band Distribution
- Bestseller Distribution
- Rating Overview
- Interactive Filters

<img width="1377" height="747" alt="dashboard_1" src="https://github.com/user-attachments/assets/47a961df-58cc-448d-9f9b-d0f01bda3026" />

---

## Dashboard 2 — Pricing & Product Performance

Features:

- Pricing KPIs
- Average Selling Price by Category
- Discount Analysis
- Price vs Customer Rating
- Premium Product Analysis
- Top Performing Products

<img width="1375" height="742" alt="dashboard_2" src="https://github.com/user-attachments/assets/d3a9ee2f-a17a-4768-a475-88e4de10547d" />

---

## Dashboard 3 — Category Performance & Demand Analysis

Features:

- Category Performance
- Customer Rating Analysis
- Monthly Demand Analysis
- Bestseller Percentage
- Product Distribution
- Category vs Price Band Matrix

<img width="1376" height="743" alt="dashboard_3" src="https://github.com/user-attachments/assets/3622cb7b-d278-48ed-88da-a38f6f8adb68" />

---

# 📊 Key Business Insights

- Most products belong to the Budget and Mid-Range pricing segments.
- Product ratings are concentrated between 4 and 5 stars, indicating generally positive customer satisfaction.
- Customer demand is highly uneven, with a small proportion of products generating the majority of purchases.
- Several categories consistently achieve higher average ratings and demand, making them strong candidates for strategic investment.
- Premium pricing alone does not guarantee higher customer ratings.
- Discounts are widely used across categories as a pricing strategy.

---

# 📁 Repository Structure

```text
Amazon-Marketplace-Intelligence/
│
├── Dataset/
│   ├── Raw Dataset
│   ├── Clean Dataset
│   └── Feature Engineered Dataset
│
├── Python/
│   ├── Data Cleaning.ipynb
│   ├── Feature Engineering.ipynb
│   └── EDA.ipynb
│
├── SQL/
│   ├── Business Analytics.sql
│   └── Advanced SQL Analytics.sql
│
├── Power BI/
│   └── Amazon Marketplace Intelligence.pbix
│
├── Images/
│   ├── Dashboard 1.png
│   ├── Dashboard 2.png
│   └── Dashboard 3.png
│
└── README.md
```

---

# 📌 Business Value

This project demonstrates how business analytics can be used to support:

- Product Portfolio Optimisation
- Pricing Strategy
- Customer Behaviour Analysis
- Category Performance Evaluation
- Inventory Prioritisation
- Marketplace Decision-Making

---

# 🚀 Skills Demonstrated

### Data Analytics

- Data Cleaning
- Data Transformation
- Feature Engineering
- Exploratory Data Analysis
- Statistical Analysis

### SQL

- Complex Queries
- Window Functions
- CTEs
- Business KPI Reporting
- Data Aggregation

### Power BI

- Interactive Dashboards
- KPI Cards
- Slicers
- Drill-down Analysis
- Cross-filtering
- Data Modelling
- DAX Measures

### Business Analysis

- Pricing Strategy
- Demand Analysis
- Category Performance
- Customer Satisfaction
- Executive Reporting

---

# 📷 Dashboard Preview

> Add screenshots of all three dashboards here.

```
Dashboard 1 – Executive Overview

Dashboard 2 – Pricing & Product Performance

Dashboard 3 – Category Performance & Demand Analysis
```

---

# 🎯 Future Enhancements

- Sales Forecasting using Machine Learning
- Demand Prediction Models
- Price Optimisation Algorithms
- Customer Segmentation
- Inventory Optimisation
- Recommendation System

---

# 👨‍💻 Author

**Ankit Das**

Production & Industrial Engineering  
Delhi Technological University (DTU)

### Connect with Me

- LinkedIn: https://www.linkedin.com/in/ankit-das-311a70330/
- GitHub: github.com/ankitdas5049
- Email: ankitdas5049@gmail.com

---
