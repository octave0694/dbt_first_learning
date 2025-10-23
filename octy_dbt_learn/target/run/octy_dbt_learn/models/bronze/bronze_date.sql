
  
  
  create or replace view `dbt_tutorial_prod`.`bronze`.`bronze_date`
  
  as (
    SELECT 
    *
FROM 
    `dbt_tutorial_prod}`.`source`.`dim_date`
  )
