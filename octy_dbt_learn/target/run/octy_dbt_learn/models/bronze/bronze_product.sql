
  
  
  create or replace view `dbt_tutorial_prod`.`bronze`.`bronze_product`
  
  as (
    SELECT 
    *
FROM 
    `dbt_tutorial_prod}`.`source`.`dim_product`
  )
