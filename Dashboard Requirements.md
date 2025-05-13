# Power BI Report Design: Sales & Customer Analytics Dashboard

## Report Overview

This Power BI report is structured into three pages, each focused on delivering actionable business insights.

---

## Page 1: Sales Overview

### Objective:
Provide an executive-level view of total sales performance, product performance, and time-based trends.

### Visual 1: Total Sales and Orders KPIs
- **Type**: KPI Cards  
- **Position**: Top row (left to right)  
- **Metrics**:
  - Total Sales → `SUM(total_price)`
  - Total Orders → `COUNT(sales_order_id)`
  - Average Order Value → `AVERAGE(total_price)`

### Visual 2: Sales by Product Category
- **Type**: Clustered Column Chart  
- **Position**: Below KPIs (left)  
- **Details**:
  - Axis: `category_name`
  - Values: `SUM(total_price)`

### Visual 3: Top Products by Revenue
- **Type**: Bar Chart  
- **Position**: Below KPIs (right)  
- **Details**:
  - Axis: `product_name`
  - Values: `SUM(total_price)`
  - Sort: Descending by revenue

### Visual 4: Sales Trend Over Time
- **Type**: Line Chart  
- **Position**: Bottom (full width)  
- **Details**:
  - Axis: `sale_date`
  - Values: `SUM(total_price)`

---

## Page 2: Customer Demographics

### Objective:
Understand customer distribution by gender, geography, and regional sales contribution.

### Visual 1: Customer Gender Breakdown
- **Type**: Donut or Pie Chart  
- **Position**: Top-left  
- **Details**:
  - Legend: `gender`
  - Values: `COUNT(customer_id)`

### Visual 2: Sales by Country
- **Type**: Filled Map or Bubble Map  
- **Position**: Top-right  
- **Details**:
  - Location: `country`
  - Size/Color: `SUM(total_price)`

### Visual 3: Sales by City and State
- **Type**: Matrix or Bar Chart  
- **Position**: Bottom half  
- **Details**:
  - Rows: `state_province`, `city`
  - Values: `SUM(total_price)`

---

## Page 3: Sales Performance by Salesperson

### Objective:
Evaluate performance of each salesperson, including gender-based analysis.

### Visual 1: Sales by Salesperson
- **Type**: Bar Chart  
- **Position**: Top full width  
- **Details**:
  - Axis: `sales_person`
  - Values: `SUM(total_price)`

### Visual 2: Sales per Salesperson by Gender
- **Type**: Stacked Column Chart  
- **Position**: Below or side-by-side  
- **Details**:
  - Axis: `sales_person`
  - Legend: `gender`
  - Values: `COUNT(customer_id)` or `SUM(total_price)`
