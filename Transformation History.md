# Table Transformations

## Bronze to Silver Notebook

### General Transformations (applied to all tables)
1. Change all date columns to `yyyy-mm-dd` format.
2. Change all column names to snake_case (e.g., `first_name`).
3. Write all tables to the **Silver** container.

---

## Silver to Gold Notebook

### Address Table
- Rename column: `country_region` → `country`.

### Customer Table
1. Create a `gender` column based on the `title` column.
2. Extract `sales_person` name in the format: `person_name` + `_` + `person_id` (e.g., `James_1`).
3. Clean `phone_number` column by removing:
   - Country code
   - Brackets
   - Dashes

### ProductModelProductDescription Table
- Expand abbreviations in the `culture` column:
  - `en` → English  
  - `ar` → Arabic  
  - `fr` → French  
  - `th` → Thai  
  - `he` → Hebrew  
  - `zh-cht` → Traditional Chinese  

### SalesOrderDetail Table
- Rename column: `line_total` → `total_price`.

---

### No transformations required for the written tables.
- Write all tables to the **Gold** container.
