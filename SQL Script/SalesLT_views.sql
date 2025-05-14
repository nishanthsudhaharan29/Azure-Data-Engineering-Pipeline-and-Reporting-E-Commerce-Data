use SalesLT_db
go

-- create customers view
create or alter view customers
as
select
header.sales_order_id,
detail.product_id,
customer.customer_id,
customer.first_name,
customer.gender,
customer.sales_person,
address.address_id,
address.city,
address.state_province,
address.country
from OPENROWSET(
        BULK 'https://salesadls2.dfs.core.windows.net/gold/SalesLT/CustomerAddress/',
        FORMAT = 'DELTA'
    ) AS customer_address
    join OPENROWSET(
        BULK 'https://salesadls2.dfs.core.windows.net/gold/SalesLT/Address/',
        FORMAT = 'DELTA'
    ) AS address
    on address.address_id = customer_address.address_id
    join OPENROWSET(
        BULK 'https://salesadls2.dfs.core.windows.net/gold/SalesLT/Customer/',
        FORMAT = 'DELTA'
    ) AS customer
    on customer.customer_id = customer_address.customer_id
    join OPENROWSET(
        BULK 'https://salesadls2.dfs.core.windows.net/gold/SalesLT/SalesOrderHeader/',
        FORMAT = 'DELTA'
    ) AS header
    on header.customer_id = customer.customer_id
    join OPENROWSET(
        BULK 'https://salesadls2.dfs.core.windows.net/gold/SalesLT/SalesOrderDetail/',
        FORMAT = 'DELTA'
    ) AS detail
    on header.sales_order_id = detail.sales_order_id

    go 

    -- create orders view
    create or alter view orders
    as
    select
    product.product_id,
    detail.sales_order_id,
    product.name as product_name,
    category.name as category_name,
    model.name as model_name,
    standard_cost as buying_price,
    unit_price,
    unit_price - unit_price_discount as selling_price,
    unit_price_discount as discount_per_quantity,
    order_qty,
    total_price,
    detail.modified_date as sale_date
    from OPENROWSET(
        BULK 'https://salesadls2.dfs.core.windows.net/gold/SalesLT/Product/',
        FORMAT = 'DELTA'
    ) AS product
    join OPENROWSET(
        BULK 'https://salesadls2.dfs.core.windows.net/gold/SalesLT/ProductCategory/',
        FORMAT = 'DELTA'
    ) AS category 
    on product.product_category_id = category.product_category_id
    join OPENROWSET(
        BULK 'https://salesadls2.dfs.core.windows.net/gold/SalesLT/ProductModel/',
        FORMAT = 'DELTA'
    ) AS model
    on product.product_model_id = model.product_model_id
    join OPENROWSET(
        BULK 'https://salesadls2.dfs.core.windows.net/gold/SalesLT/SalesOrderDetail/',
        FORMAT = 'DELTA'
    ) AS detail
    on detail.product_id = product.product_id;
    
GO

-- create payments view
create or alter view payments
as 
select 
header.sales_order_id,
customer_id,
order_date,
product_id
from OPENROWSET(
        BULK 'https://salesadls2.dfs.core.windows.net/gold/SalesLT/SalesOrderHeader/',
        FORMAT = 'DELTA'
    ) AS header
    join OPENROWSET(
        BULK 'https://salesadls2.dfs.core.windows.net/gold/SalesLT/SalesOrderDetail/',
        FORMAT = 'DELTA'
    ) AS detail
    on header.sales_order_id = detail.sales_order_id


