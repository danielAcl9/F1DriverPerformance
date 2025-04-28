import boto3

# Create an S3 client
s3 = boto3.client('s3')

# Variables
bucket_name = 'f1-pipeline-daniel2025'
local_file_path = 'data\\f1_2025_season_results.csv'
s3_key = 'processed/f1_2025_data.csv'

s3.upload_file(local_file_path, bucket_name, s3_key)

print('File uploaded to S3 successfully')