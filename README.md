# 🍕 Pizza Sales Analysis Using SQL & Excel

## Overview

This project focuses on analyzing pizza sales data using SQL and Excel to uncover business insights, sales trends, customer ordering behavior, and product performance.

The objective is to transform raw transactional sales data into actionable insights through KPI analysis, trend analysis, and interactive dashboard visualizations.

The project covers the complete analytics workflow, including SQL-based data exploration, KPI generation, business analysis, and dashboard development using Excel Pivot Tables and Pivot Charts.

---

## Dataset

The dataset contains pizza order information, including:

* Order ID
* Order Date
* Order Time
* Pizza Name
* Pizza Category
* Pizza Size
* Quantity Sold
* Total Price

The data was analyzed to evaluate sales performance, customer purchasing patterns, and product popularity.

---

## Tools & Technologies

### Database & Querying

* PostgreSQL
* SQL

### Data Analysis & Visualization

* Microsoft Excel
  * Pivot Tables
  * Pivot Charts
  * Slicers

### Reporting

* Microsoft PowerPoint
* GitHub

---

## Business Problem Statement

The goal of this project was to analyze pizza sales data and answer key business questions related to revenue generation, sales trends, and product performance.

### KPI Requirements

* Total Revenue
* Average Order Value
* Total Pizzas Sold
* Total Orders
* Average Pizzas Per Order

### Chart Requirements

* Daily Trend for Total Orders
* Hourly Trend for Total Orders
* Percentage of Sales by Pizza Category
* Percentage of Sales by Pizza Size
* Total Pizzas Sold by Pizza Category
* Top 5 Best Selling Pizzas
* Bottom 5 Worst Selling Pizzas

---

## Project Workflow

### 1. Data Preparation

* Imported pizza sales data into PostgreSQL.
* Verified data quality and structure.
* Prepared the dataset for analysis.

### 2. KPI Analysis

Calculated key business metrics including:

* Total Revenue
* Average Order Value
* Total Orders
* Total Pizzas Sold
* Average Pizzas Per Order

### 3. Sales Trend Analysis

Analyzed customer ordering patterns through:

* Daily Order Trends
* Hourly Order Trends

This helped identify peak sales periods and customer purchasing behavior.

### 4. Product Performance Analysis

Evaluated:

* Sales contribution by pizza category
* Sales contribution by pizza size
* Best-selling pizzas
* Worst-selling pizzas

### 5. Dashboard Development

Built an interactive Excel dashboard using:

* Pivot Tables
* Pivot Charts
* Slicers

The dashboard was designed to visualize:

* Revenue Performance
* Order Trends
* Category-wise Sales
* Size-wise Sales
* Best Sellers
* Worst Sellers

---

## Dashboard Highlights

The Excel dashboard provides:

* KPI Overview
* Daily Order Trends
* Hourly Order Trends
* Sales by Pizza Category
* Sales by Pizza Size
* Top 5 Best Sellers
* Bottom 5 Worst Sellers
* Interactive Slicers for dynamic analysis

---

## Key Results

### Revenue Performance

* Total Revenue generated: **$817,860**
* Average Order Value: **$38.31**

### Customer Ordering Behavior

* Total Orders: **21,350**
* Total Pizzas Sold: **49,574**
* Average Pizzas Per Order: **2.32**
* Peak ordering activity occurs during lunch and evening hours.
* Friday records the highest number of customer orders.

### Product Insights

* Classic category contributes the highest number of pizzas sold.
* Large-size pizzas generate the largest share of revenue.
* The Classic Deluxe Pizza is the top-selling product.
* The Brie Carre Pizza is the lowest-selling product.

---

## SQL Concepts Used

* Aggregate Functions
* GROUP BY
* ORDER BY
* DISTINCT
* Subqueries
* Date Functions
* Time Functions
* Percentage Calculations
* Ranking Analysis

---

## Repository Structure

```text
├── Dataset
│   └── pizza_sales.xlsx
│
├── SQL Queries
│   └── pizza_sales_queries.sql
│
├── Excel Dashboard
│   └── Pizza Sales Dashboard.xlsx
│
├── Screenshots
│   ├── Dashboard Overview.png
│   ├── KPI Analysis.png
│   ├── Sales Trends.png
│   └── Product Performance.png
│
└── README.md
```

---

## How to Run

### SQL Analysis

1. Import the dataset into PostgreSQL.
2. Create the required table.
3. Load the dataset into the database.
4. Execute the SQL queries provided in:

```text
pizza_sales_queries.sql
```

### Excel Dashboard

1. Open:

```text
Pizza Sales Dashboard.xlsx
```

2. Use the available slicers and filters to explore sales performance.

3. Review KPI metrics, trends, and product performance insights.

---

## Future Improvements

* Customer Segmentation Analysis
* Sales Forecasting
* Product Recommendation Analysis
* Regional Sales Analysis
* Automated Dashboard Refresh

---

## Author

**Arush Verma**

Data Analytics Project focused on Pizza Sales Analysis using SQL and Excel to derive actionable business insights and support data-driven decision-making.
