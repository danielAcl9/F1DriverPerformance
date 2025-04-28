# F1DriverPerformance

Claro, aquí tienes una **versión más formal y tipo startup/profesional**, enfocada *solo* en lo que ya has completado:

---

## Project Overview

This project develops a foundational data pipeline leveraging AWS services (S3, Athena, Glue) to analyze Formula 1 driver performance during the 2025 season.  
The objective is to simulate real-world practices by automating the ingestion, structuring, and storage of analytical datasets into something I like as Formula 1.

- **Data Extraction:**  
  - Retrieved official race results for the first rounds of the 2025 Formula 1 season using the `FastF1` Python library, through Jolpica-F1
  - Selected key variables, including Driver Number, Driver Name, Team Name, Position, Points, Grid Position, Race Round, and Race Name.

- **Data Transformation:**  
  - Computed additional analytical fields such as *Position Gain/Loss* and normalized the *Gap to Winner* in seconds.
  - Standardized and reorganized the dataset for efficient querying and analysis.

- **Cloud Infrastructure Setup:**  
  - Created and configured an Amazon S3 bucket.
  - Structured the storage system into logical folders.
  - Programmatically uploaded the processed datasets to S3 using Python with the `boto3` library.

### Data Catalog Setup with AWS Glue

Configured AWS Glue to create a data catalog for the Formula 1 performance data stored in Amazon S3.

- **Created a Glue Crawler**: A crawler was set up to scan the S3 bucket and automatically detect the schema of the CSV files containing race data.
- **Optimized Data Types**: Data types were optimized in the Glue catalog (e.g., changing from `bigint` to `smallint`) to reduce storage usage and improve query performance.
- **Confirmed Data Availability**: After the crawler run, the tables were confirmed to appear in the AWS Glue Data Catalog.