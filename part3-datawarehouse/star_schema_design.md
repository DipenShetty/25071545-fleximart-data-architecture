# Star Schema Design – FlexiMart Data Warehouse

## Section 1: Schema Overview

The FlexiMart data warehouse is designed using a star schema to support analytical reporting on historical sales data. The schema consists of a central fact table surrounded by descriptive dimension tables, enabling efficient querying and aggregation.

---

### FACT TABLE: fact_sales

**Grain:** One row per product per order line item  
**Business Process:** Sales transactions

**Measures (Numeric Facts):**
- quantity_sold: Number of units sold
- unit_price: Price per unit at the time of sale
- discount_amount: Discount applied on the sale
- total_amount: Final sale amount (quantity × unit_price − discount)

**Foreign Keys:**
- date_key → dim_date
- product_key → dim_product
- customer_key → dim_customer

---

### DIMENSION TABLE: dim_date

**Purpose:** Supports time-based analysis such as daily, monthly, and yearly trends  
**Type:** Conformed dimension

**Attributes:**
- date_key (PK): Surrogate key in YYYYMMDD format
- full_date: Actual calendar date
- day_of_week: Name of the day
- day_of_month: Numeric day of the month
- month: Numeric month (1–12)
- month_name: Month name
- quarter: Quarter (Q1–Q4)
- year: Calendar year
- is_weekend: Boolean flag indicating weekend

---

### DIMENSION TABLE: dim_product

**Purpose:** Stores descriptive information about products

**Attributes:**
- product_key (PK): Surrogate key
- product_id: Business product identifier
- product_name: Product name
- category: Product category
- subcategory: Product subcategory
- unit_price: Standard product price

---

### DIMENSION TABLE: dim_customer

**Purpose:** Stores descriptive information about customers

**Attributes:**
- customer_key (PK): Surrogate key
- customer_id: Business customer identifier
- customer_name: Full name of the customer
- city: Customer city
- state: Customer state
- customer_segment: Customer classification (e.g., Regular, Premium)

---

## Section 2: Design Decisions

The fact table is designed at the transaction line-item level to ensure maximum analytical flexibility. This granularity allows analysts to evaluate product-level sales, customer purchasing behavior, and detailed time-based trends while still supporting aggregated reporting.

Surrogate keys are used instead of natural keys to improve query performance and simplify joins between fact and dimension tables. They also help isolate the data warehouse from changes in source system identifiers.

This star schema supports efficient drill-down and roll-up operations. Analysts can drill down from yearly to quarterly, monthly, or daily sales using the date dimension and roll up data by product category or customer segment for high-level insights.

---

## Section 3: Sample Data Flow

**Source Transaction:**  
Order #101  
Customer: John Doe  
Product: Laptop  
Quantity: 2  
Unit Price: 50000  

**Data Warehouse Representation:**

**fact_sales**

{
date_key: 20240115,
product_key: 5,
customer_key: 12,
quantity_sold: 2,
unit_price: 50000,
discount_amount: 0,
total_amount: 100000
}

*dim_date*
{ date_key: 20240115, full_date: '2024-01-15', month: 1, quarter: 'Q1', year: 2024 }

*dim_product*
{ product_key: 5, product_name: 'Laptop', category: 'Electronics' }

*dim_customer*
{ customer_key: 12, customer_name: 'John Doe', city: 'Mumbai' }