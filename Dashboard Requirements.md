# AdventureWorks Sales Performance Dashboard

## Project Name
**AdventureWorks Sales Performance Dashboard**

## Purpose
To provide a clear, interactive, and location-specific summary of sales performance for AdventureWorks, split between the United States and the United Kingdom, enabling data-driven decisions on product, geography, and profitability.

## Scope
Create a Power BI Dashboard with two pages:

- **Page 1:** United States Sales Data  
- **Page 2:** United Kingdom Sales Data

Both pages should have the same structure and visual components, tailored to the respective country’s data.

## Page Structure and Visuals

### Filters (Top Left)
- **Category Slicer (Dropdown):** Filter data by product category.
- **Country Tabs (Buttons or Bookmarks):**
  - United States
  - United Kingdom

### KPI Cards (Top Row)
Display the following metrics using card visuals:
- Products Sold
- Customers
- Orders
- Revenue (e.g., $645.73K)
- Income (Profit) (e.g., -$11.27K)

### Bar Chart – Profit Margin in USD
- **X-Axis:** Profit (Income) and Revenue
- **Y-Axis:** Product Names
- **Details:**
  - Use side-by-side bars for Revenue (blue) and Income (light blue)
  - Display values in K (thousands)

### Map Visual – Revenue in USD
- **Map Type:** Basic or Filled Map
- **Data Points:**
  - Location (e.g., California, Nevada, etc.)
  - Size/color of bubble based on Revenue
  - Tooltip shows revenue per region
- **For UK page:** Use equivalent regions (e.g., London, Manchester, etc.)
