## Project Backlog Breakdown

| ID  | Epic                     | User Story                                                         | Estimate Hours | Status     |
|-----|--------------------------|----------------------------------------------------------------------|----------------|------------|
| 1   | Azure Environment Setup  | Create Azure Resource Group                                         | 1              | Completed  |
|     |                          | Provision Azure Data Factory instance                               |                | Completed  |
|     |                          | Create Azure Data Lake Storage with Bronze, Silver, Gold containers |                | Completed  |
|     |                          | Set up Azure Databricks workspace                                   |                | Completed  |
|     |                          | Set up Azure Synapse Analytics workspace                            |                | Completed  |
|     |                          | Configure Azure Key Vault and store credentials                     |                | Completed  |
| 2   | Data Source Preparation  | Install SQL Server and SSMS locally                                 | 0.5            | Completed  |
|     |                          | Restore AdventureWorks database                                     |                | Completed  |
| 3   | Data Ingestion           | Create Linked Service and Integration Runtime in ADF                | 3              | Completed  |
|     |                          | Create ADF pipeline to copy data to Bronze layer in ADLS            |                | Completed  |
| 4   | Data Transformation      | Mount ADLS to Databricks                                            | 10             | Completed  |
|     |                          | Create Databricks notebook for Bronze ➝ Silver transformation      |                | Completed  |
|     |                          | Create Databricks notebook for Silver ➝ Gold transformation        |                | Completed  |
| 5   | Data Loading             | Load Gold data into Azure Synapse Analytics                         | 4              | Completed  |
|     |                          | Create views with joins and column-level security                   |                | Completed  |
| 6   | Reporting                | Connect Power BI to Synapse                                         | 3              | Completed  |
|     |                          | Build dashboard visualizing KPIs by gender, category, and date      |                |            |
| 7   | Automation & Monitoring  | Schedule ADF pipelines to run daily                                 | 0.5            |            |
| 8   | Security & Governance    | Set up Role-Based Access Control (RBAC) with Azure Entra ID         | 0.5            |            |
| 9   | Testing & Validation     | Insert sample records in SQL Server to trigger the full pipeline    | 0.5            |            |
|     |                          | Verify Power BI dashboard updates accordingly                       |                |            |
