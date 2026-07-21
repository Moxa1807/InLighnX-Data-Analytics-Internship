# 🍽️ Zomato Restaurant Data – Exploratory Data Analysis

## 📌 Project Overview

This project explores restaurant listing data using Python to understand patterns in restaurant categories, online ordering, table booking, cost, ratings, and customer engagement.

The analysis aims to identify factors associated with restaurant popularity and customer ratings.

---

## 🎯 Project Objective

The objectives were to:

- Analyze restaurant categories.
- Study online ordering availability.
- Examine table-booking availability.
- Analyze restaurant ratings.
- Compare restaurant costs.
- Understand customer engagement using votes.

---

## 📂 Dataset

The dataset contained:

- **148 restaurant records**
- **7 columns**

Fields included:

- Name
- Online Order
- Book Table
- Rate
- Votes
- Approximate Cost for Two People
- Listed In (Type)

---

## 🛠 Tools & Technologies

- Python
- Pandas
- Matplotlib
- Seaborn
- Jupyter Notebook

---

## 🔄 Project Workflow

```text
Data Loading
    ↓
Data Cleaning
    ↓
Rating Conversion
    ↓
Missing Value Handling
    ↓
Exploratory Analysis
    ↓
Visualization
    ↓
Business Insights
```

---

## 🧹 Data Preparation

The `rate` column was originally stored as text in an `X/5` format.

The data preparation included:

- Converting ratings into numeric values.
- Handling missing and `NEW` rating values.
- Grouping restaurants by listing type.
- Comparing online and offline ordering.
- Analyzing average cost for two people.

---

## 📊 Analysis Performed

The analysis covered:

- Restaurant listing type.
- Customer votes.
- Rating distribution.
- Online ordering availability.
- Table booking availability.
- Average cost for two people.

---

## 🔑 Key Insights

- **Dining** was the dominant restaurant listing type, representing **110 of 148 restaurants**.
- Dining restaurants also received the highest number of customer votes.
- The overall average rating was approximately **3.63 out of 5**.
- Most restaurants were concentrated in the **3.5–4.0 rating range**.
- Restaurants offering online ordering had a higher average rating (**3.86**) than restaurants without online ordering (**3.49**).
- Only **8 out of 148 restaurants** offered table booking.
- The average approximate cost for two people was around **₹418**.

---

## 💡 Business Takeaways

The findings indicate a possible relationship between digital convenience and customer satisfaction, as restaurants offering online ordering recorded higher average ratings in this dataset.

The low availability of table booking also suggests that the dataset was primarily composed of casual dining establishments.

---

## 🎓 Learning Outcomes

- Data cleaning using Python.
- String-to-numeric data transformation.
- Handling missing values.
- Exploratory Data Analysis.
- Customer rating analysis.
- Data visualization.
- Business interpretation.

---

## 👨‍💻 Author

**Moxa Shah**

MBA – Business Intelligence  
B. K. School of Professional and Management Studies  
Gujarat University
