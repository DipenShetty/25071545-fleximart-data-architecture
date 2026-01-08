-- =========================================================
-- Query 1: Monthly Sales Drill-Down Analysis
-- Business Scenario:
-- The CEO wants to analyze sales performance starting from
-- yearly totals, then drilling down to quarterly and monthly
-- sales for the year 2024.
-- Demonstrates: Drill-down (Year → Quarter → Month)
-- =========================================================

SELECT
    d.year,
    d.quarter,
    d.month_name,
    SUM(f.total_amount) AS total_sales,
    SUM(f.quantity_sold) AS total_quantity
FROM fact_sales f
JOIN dim_date d
    ON f.date_key = d.date_key
WHERE d.year = 2024
GROUP BY
    d.year,
    d.quarter,
    d.month,
    d.month_name
ORDER BY
    d.year,
    d.month;


-- =========================================================
-- Query 2: Product Performance Analysis
-- Business Scenario:
-- The product manager wants to identify the top-performing
-- products by revenue, including