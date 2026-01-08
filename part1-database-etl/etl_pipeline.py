import pandas as pd
import mysql.connector
import logging

# ---------------- LOGGING ----------------
logging.basicConfig(level=logging.INFO)

# ---------------- DATABASE CONFIG ----------------
db_config = {
    "host": "localhost",
    "user": "root",
    "password": "qwerty12345",
    "database": "fleximart"
}

# ---------------- MAIN ----------------
def main():
    logging.info("Starting ETL pipeline")

    # Test DB connection
    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor()
    logging.info("Connected to MySQL database")

    # Read CSV files
    customers = pd.read_csv("../data/customers_raw.csv")
    products = pd.read_csv("../data/products_raw.csv")
    sales = pd.read_csv("../data/sales_raw.csv")

    logging.info(f"Customers records: {len(customers)}")
    logging.info(f"Products records: {len(products)}")
    logging.info(f"Sales records: {len(sales)}")

    cursor.close()
    conn.close()

    logging.info("ETL pipeline setup completed successfully")

if __name__ == "__main__":
    main()