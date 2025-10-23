
  
  
  create or replace view `dbt_tutorial_prod`.`bronze`.`bronze_sales`
  
  as (
    SELECT 
    *
FROM 
    `dbt_tutorial_prod}`.`source`.`fact_sales`
  )
