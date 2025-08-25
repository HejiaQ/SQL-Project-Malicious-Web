# Malicious Website Data Analysis (SQL + PowerBI + (tba) Classification)

## Project Introduction

This project aims to analyze data related to malicious website to discover potential trend and information that help people identify a malicious website better. The discovery are presented using SQL queries results as listed in this README as well as visualization in powerBI. The discovery might also gives direction for building a machine learning model to identify malicious or benign.

## Data Source

https://www.kaggle.com/datasets/xwolf12/malicious-and-benign-websites

## Metrics of Interests & SQL Results
1. What is the mean, max, min, and variance of the number of special characters for benign websites and for malicious websites?
![alt text](<SQL Results/query_1.png>)
2. What is the mean, max, min, and variance of the number of tcp packets exchanged for benign websites and for malicious websites?
![alt text](<SQL Results/query_2.png>)
3. What is the mean, max, min, and variance of the number of DNS packets generated during the communication between the honeypot and the server for benign websites and for malicious websites?
![alt text](<SQL Results/query_3.png>)
4. What are the top 3 server used for benign websites?
![alt text](<SQL Results/query_4.png>)
5. What are the top 3 server used for malicious websites?
![alt text](<SQL Results/query_5.png>)
6. How many website has total number of IPs connected to the honeypot above the average for benign website and for malicious website (inluding total count and ratio for additional info)
![alt text](<SQL Results/query_6.png>)

## Visualization (Power BI)
1. Stacked bar charts for server used for benign websites, malicious websites, and both
2. Pie charts for number of malicious website group by server's country
3. A scatter plot for special characters VS url length (mark the categories of websites)

## TODO
A machine learning model (classficiation model) can be used to predict whether a website is malicious or benign. 