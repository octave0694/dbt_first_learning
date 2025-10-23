
  
    
        create or replace table `dbt_tutorial_dev`.`silver`.`silver_sales_info`
      
      
  using delta
      
      
      
      
      
      
      
      as
      WITH sales AS (
    SELECT
        sales_id,
        product_sk,
        customer_sk,
        unit_price * quantity AS calculated_gross_amount,
        gross_amount,
        payment_method
    FROM
        `dbt_tutorial_dev`.`bronze`.`bronze_sales`
),

products AS (
    SELECT
        product_sk,
        category
    FROM
        `dbt_tutorial_dev`.`bronze`.`bronze_product`
),

customer AS (
    SELECT
        customer_sk,
        gender
    FROM
        `dbt_tutorial_dev`.`bronze`.`bronze_customer`
),

joined_query AS (
    SELECT
        s.sales_id,
        s.gross_amount,
        s.payment_method,
        p.category,
        c.gender
    FROM
        sales s
    JOIN
        products p ON s.product_sk = p.product_sk
    JOIN
        customer c ON s.customer_sk = c.customer_sk
)

SELECT
    category,
    gender,
    sum(gross_amount) AS total_sales
FROM joined_query
GROUP BY
    1,
    2
ORDER BY  
    total_sales DESC
  