# SALES-PERFORMANCE-AND-CUSTOMER-INSIGHTS-REPORT.
SQL query and Power BI visualizations

1. Introduction

This report presents an analysis of sales transaction data using SQL and Power BI. The objective is to evaluate overall sales performance, understand customer behavior, identify top-performing branches and product lines, and uncover trends.

2. Dataset Description

The dataset contains sales records with the following attributes:

Date

Branch

Customer Type

Gender

Product Line

Unit Price

Quantity

Payment Method

Customer Rating

Each row represents a single sales transaction.

3. Methodology
3.1 Data Preparation (SQL)

SQL was used to clean, transform, and prepare the dataset before loading it into Power BI. A calculated field for total sales was created by multiplying unit price and quantity. Date fields were also transformed to extract year and month for trend analysis.

SELECT
    CAST(date AS DATE) AS sales_date,
    YEAR(date) AS year,
    MONTH(date) AS month,
    branch,
    customer_type,
    gender,
    product_line,
    payment,
    unit_price,
    quantity,
    unit_price * quantity AS total_sales,
    rating
FROM sales_supermarket_datas;

3.2 Data Modeling and Measures (Power BI)

Key performance indicators (KPIs) were created using DAX to support analysis:

Total Revenue

Total Quantity Sold

Total Transactions

Average Customer Rating

These measures enabled dynamic filtering and interactive analysis across visuals.

4. Dashboard Overview

The Power BI dashboard consists of:

KPI cards showing overall performance

Bar and column charts for branch and product performance

Line charts for monthly sales trends

Donut and bar charts for payment and customer analysis

Interactive slicers for date, branch, gender, customer type, product line, and payment method

5. Analysis and Findings
5.1 Sales Performance

The analysis revealed that certain branches generated significantly higher revenue compared to others, indicating uneven sales distribution across locations. This insight can guide management in allocating resources and improving underperforming branches.

5.2 Product Line Analysis

Some product lines consistently outperformed others in terms of total revenue and quantity sold. These products represent high-demand categories and could be prioritized for inventory planning and promotional campaigns.

5.3 Sales Trend Analysis

Monthly sales trends showed noticeable variations across different periods. These patterns suggest seasonality in customer purchasing behavior, which can help in forecasting future sales and planning marketing strategies.

5.4 Customer and Payment Behavior

Customer segmentation by gender and customer type highlighted differences in purchasing behavior. Payment analysis showed that certain payment methods were more frequently used, indicating customer preference and convenience trends.

5.5 Customer Satisfaction

Average customer ratings across product lines provided insights into customer satisfaction. Higher ratings were generally associated with top-selling product lines, suggesting a positive relationship between product quality and sales performance.

6. Key Insights

A small number of branches contribute the majority of total revenue.

Certain product lines dominate sales and customer preference.

Sales performance varies by month, indicating seasonality.

Customers show clear preferences for specific payment methods.

Higher customer ratings align with better sales performance.

7. Business Recommendations

Invest more in high-performing branches and product lines.

Improve marketing and operational strategies for low-performing branches.

Use sales trends for demand forecasting and inventory planning.

Promote preferred payment methods to improve customer experience.

Focus on maintaining product quality to sustain high customer ratings.

8. Conclusion

This analysis demonstrates how SQL and Power BI can be effectively used to transform raw sales data into meaningful insights. The interactive dashboard enables stakeholders to monitor performance, understand customer behavior, and make informed business decisions. The approach highlights strong analytical, visualization, and reporting skills relevant to real-world business environments.
