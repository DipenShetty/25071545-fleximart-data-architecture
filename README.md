# FlexiMart Data Architecture Project

*Student Name:* Dipen Shetty 
*Student ID:* 25071545  
*Email:* shettydipen@gmail.com
*Date:* January 2026

---

## Project Overview

This project implements an end-to-end data architecture solution for FlexiMart, an e-commerce company. It covers data ingestion and cleaning using an ETL pipeline, relational database design and querying, NoSQL data modeling with MongoDB, and a data warehouse built using a star schema to support analytical reporting and business intelligence use cases.

---

## Repository Structure

├── data/
│ ├── customers_raw.csv
│ ├── products_raw.csv
│ └── sales_raw.csv
│
├── part1-database-etl/
│ ├── etl_pipeline.py
│ ├── schema_documentation.md
│ ├── business_queries.sql
│ ├── data_quality_report.txt
│ └── requirements.txt
│
├── part2-nosql/
│ ├── nosql_analysis.md
│ ├── mongodb_operations.js
│ └── products_catalog.json
│
├── part3-datawarehouse/
│ ├── star_schema_design.md
│ ├── warehouse_schema.sql
│ ├── warehouse_data.sql
│ └── analytics_queries.sql
│
├── .gitignore
└── README.md

---

## Technologies Used

- **Python 3.x** (pandas, mysql-connector-python)
- **MySQL 8.0**
- **MongoDB 6.0**
- **Git & GitHub**
- **MongoDB Shell (mongosh)**

---

## Setup Instructions

### Database Setup (MySQL)

```bash
# Create databases
mysql -u root -p -e "CREATE DATABASE fleximart;"
mysql -u root -p -e "CREATE DATABASE fleximart_dw;"

# Run Part 1 - ETL Pipeline
python part1-database-etl/etl_pipeline.py

# Run Part 1 - Business Queries
mysql -u root -p fleximart < part1-database-etl/business_queries.sql

# Run Part 3 - Data Warehouse
mysql -u root -p fleximart_dw < part3-datawarehouse/warehouse_schema.sql
mysql -u root -p fleximart_dw < part3-datawarehouse/warehouse_data.sql
mysql -u root -p fleximart_dw < part3-datawarehouse/analytics_queries.sql

MongoDB Setup
# Import product catalog data

mongoimport --db fleximart_nosql \
  --collection products \
  --file part2-nosql/products_catalog.json \
  --jsonArray

# Run MongoDB operations
mongosh part2-nosql/mongodb_operations.js

# Key Learnings

# This project provided hands-on experience in building a complete data pipeline from raw data ingestion to analytics-ready data models. I gained practical understanding of ETL processes, data quality handling, relational vs NoSQL database design, and dimensional modeling for analytics. The project also strengthened my SQL querying skills and reinforced best practices for structuring and documenting data engineering projects.

# Challenges Faced

# Handling inconsistent and missing data during ETL
# This was resolved by applying appropriate data cleaning strategies such as deduplication, standardization, and controlled record exclusion.

# Executing MongoDB scripts across different environments
# The issue was addressed by converting interactive shell commands into script-safe JavaScript,     ensuring portability and consistent execution.

# Submission Notes

This repository is public

All parts of the assignment have been implemented and tested

Commit history reflects incremental development as required