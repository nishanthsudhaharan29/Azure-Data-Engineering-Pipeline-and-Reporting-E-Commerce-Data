# Azure End-to-End Data Engineering Real-Time Project

## Overview

This project delivers a full-scale Azure-based data engineering pipeline that addresses a critical business requirement. The objective is to extract customer and sales data from an on-premises SQL Server database, process and transform the data in the cloud, and deliver actionable insights through a Power BI dashboard.

The dashboard enables stakeholders to explore customer demographics, specifically gender distribution, and their relationship to product sales by allowing filtering by date, product category, and gender.

---

## Business Requirements

The business has identified a need to better understand customer demographics and how they impact purchasing behavior. The key requirements are:

- **Sales by Gender and Product Category**: Track products sold, total revenue, and customer gender distribution.
- **Interactive Filtering**: Filter data by product category, gender, and date range.
- **Stakeholder Access**: Easy-to-use Power BI dashboard for business decision-makers.

---

## Solution Architecture

The solution is structured into the following major components:

### Data Ingestion
- Extract customer and sales data from an on-premises SQL Server.
- Load raw data into Azure Data Lake Storage (ADLS) using Azure Data Factory (ADF).

### Data Transformation
- Use Azure Databricks to process and cleanse data.
- Organize data into the following layers:
  - **Bronze**: Raw data
  - **Silver**: Cleansed data
  - **Gold**: Aggregated and business-ready data

### Data Loading and Reporting
- Load Gold data into Azure Synapse Analytics.
- Connect Power BI to Synapse to generate reports and dashboards.

### Automation and Monitoring
- Use Azure Data Factory triggers to refresh pipelines on a daily schedule.
- Monitor pipeline executions and performance metrics.

### Security and Governance
- Secure secrets and credentials using Azure Key Vault.
- Enforce Role-Based Access Control (RBAC) using Azure Entra ID (formerly Azure Active Directory).

---

## Technology Stack

- **Azure Data Factory (ADF)**: Data orchestration and pipeline automation
- **Azure Data Lake Storage (ADLS)**: Hierarchical cloud storage
- **Azure Databricks**: Data transformation and notebook-based processing
- **Azure Synapse Analytics**: Data warehousing and SQL analytics
- **Power BI**: Visualization and dashboarding
- **Azure Key Vault**: Secure credentials and secrets management
- **SQL Server (On-Premises)**: Source system

---
