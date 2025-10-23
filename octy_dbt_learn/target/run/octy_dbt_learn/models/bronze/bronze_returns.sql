
  
    
        create or replace table `dbt_tutorial_prod`.`bronze`.`bronze_returns`
      
      
  using delta
      
      
      
      
      
      
      
      as
      SELECT 
    *
FROM 
    `dbt_tutorial_prod}`.`source`.`fact_returns`
  