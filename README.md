# F1DriverPerformance

## Project Overview

This project develops a foundational data pipeline leveraging AWS services to analyze Formula 1 driver performance during the 2025 season.  
The objective is to simulate real-world practices by automating the ingestion, structuring, and storage of analytical datasets for Formula 1 racing.

### Data Extraction
- Retrieved official race results for the first rounds of the 2025 Formula 1 season using the `FastF1` Python library through Jolpica-F1.
- Selected key variables, including Driver Number, Driver Name, Team Name, Position, Points, Grid Position, Race Round, and Race Name.

### Data Transformation
- Computed additional analytical fields such as *Position Gain/Loss* and normalized the *Gap to Winner* in seconds.
- Standardized and reorganized the dataset for efficient querying and analysis.

### Cloud Infrastructure Setup
- Created and configured an Amazon S3 bucket for data storage.
- Structured the storage system into logical folders to organize data by race, processed datasets, and more.
- Programmatically uploaded the processed datasets to S3 using Python with the `boto3` library.

### Data Cataloging with AWS Glue
- Configured an AWS Glue Crawler to automatically detect schemas in the S3 bucket and create a Data Catalog.
- Ensured the data was stored in an optimized structure for analysis.

### Data Querying with AWS Athena
- Enabled SQL-based querying of the structured data stored in Amazon S3.
- Created multiple queries to analyze driver performance, including:
  - Top 5 drivers by total points.
  - Driver performance improvement over time.
  - Comparison between teams and individual driver results.

## Technologies Used
- **Python:** For data extraction, transformation, and interaction with AWS services.
- **AWS S3:** For storing raw and processed data.
- **AWS Glue:** For creating a data catalog and structuring the data.
- **AWS Athena:** For running SQL queries on data stored in S3.
- **FastF1:** For retrieving official Formula 1 race results.

## Data Flow Diagram

![Data Pipeline Diagram]()

## Key Results
- **Top 5 Drivers by Points:** Query results showcasing the highest points earners.
- **Position Gain/Loss:** Analysis of drivers' movement across races.
- **Gap to Winner Analysis:** Breakdown of drivers' proximity to the race winner across multiple races.
- **Team Comparison:** Performance analysis across different teams throughout the season.

## Conclusion
This project provides an end-to-end data pipeline for processing and analyzing Formula 1 driver performance data. The use of AWS services ensures scalability, reliability, and ease of analysis through structured data storage and SQL-based querying.