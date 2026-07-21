# 📊 E-Commerce Sales & Profitability Dashboard

## 📌 Project Overview

This project focuses on developing an interactive Power BI dashboard to analyze order-level e-commerce data across different Indian states, product categories, sub-categories, and payment modes.

The objective was to identify the key factors contributing to sales and profitability and present the findings through an interactive business intelligence dashboard.

---

## 🎯 Project Objective

The main objective of this project was to:

- Analyze overall e-commerce sales and profitability.
- Identify top-performing states.
- Compare sales performance across product categories and sub-categories.
- Analyze customer payment mode preferences.
- Track important business KPIs.
- Create an interactive dashboard to support data-driven decision-making.

---

## 📂 Dataset

The dataset consisted of two related tables:

### Orders Table

- 500 orders
- Order ID
- Order Date
- Customer Name
- State
- City

### Order Details Table

- 1,500 line items
- Order ID
- Amount
- Profit
- Quantity
- Category
- Sub-Category
- Payment Mode

The two tables were connected using **Order ID** as the common key.

---

## 🛠 Tools & Technologies

- Power BI
- Power Query
- DAX
- Data Modeling
- Data Visualization

---

## 🔄 Project Workflow

```text
Data Import
    ↓
Data Validation & Cleaning
    ↓
Data Modeling
    ↓
DAX Measures
    ↓
Interactive Visualizations
    ↓
Dashboard Development
    ↓
Business Insights
```

---

## 🧹 Data Preparation

The following data preparation activities were performed:

- Checked for duplicate Order IDs.
- Verified date formats.
- Checked data quality.
- Confirmed the availability of Amount and Profit values.
- Created a relationship between Orders and Order Details using Order ID.

---

## 📐 Key DAX Measures

The dashboard included measures for:

- Total Sales
- Total Profit
- Profit Margin %
- Average Order Value
- Order Count

---

## 📊 Dashboard Features

The dashboard included:

- KPI cards for Total Sales, Total Profit, and Order Count.
- State-wise sales analysis.
- Category and sub-category performance.
- Payment mode analysis.
- Interactive slicers for:
  - State
  - Category
  - Payment Mode

---

## 🔑 Key Insights

- Total sales across the 500 orders were approximately **₹4.38 lakh**, with total profit of approximately **₹36,963**.
- The overall profit margin was approximately **8.4%**.
- The average order value was approximately **₹875.50**.
- **Maharashtra** was the highest-performing state by sales with approximately **₹1,02,498**.
- Maharashtra was followed by **Madhya Pradesh (₹87,463)** and **Uttar Pradesh (₹38,362)**.
- **Electronics** was the leading category by sales with approximately **₹1,66,267**.
- **Clothing** and **Furniture** followed with approximately **₹1,44,323** and **₹1,27,181**, respectively.
- **Printers** and **Bookcases** were among the most profitable sub-categories.
- **Cash on Delivery (COD)** was the most-used payment mode, followed by UPI and Debit Card.

---

## 💡 Business Takeaways

The analysis indicates that sales performance was concentrated in a few key states and product categories. Maharashtra emerged as a major revenue contributor, while Electronics generated the highest category-level sales.

The high usage of Cash on Delivery also suggests that payment preferences should be considered when planning customer acquisition and payment strategies.

---

## 🎓 Learning Outcomes

Through this project, I gained practical experience in:

- Power BI data modeling.
- Data cleaning and validation.
- DAX measure creation.
- KPI development.
- Interactive dashboard design.
- Business-focused data analysis.
- Converting raw data into actionable insights.

---

## 👨‍💻 Author

**Moxa Shah**

MBA – Business Intelligence  
B. K. School of Professional and Management Studies  
Gujarat University
