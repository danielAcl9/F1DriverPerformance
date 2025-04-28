# F1DriverPerformance

## Project Overview

This project develops a foundational data pipeline leveraging AWS services (S3, Athena, Glue) to analyze Formula 1 driver performance during the 2025 season.  
The objective is to simulate real-world practices by automating the ingestion, structuring, and storage of analytical datasets into something I like as Formula 1.

### Work Completed

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
