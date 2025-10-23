
  
    
        create or replace table `dbt_tutorial_prod`.`bronze`.`bronze_customer`
      
      
  using delta
      
      
      
      
      
      
      
      as
      SELECT 
    *
FROM 
    `dbt_tutorial_prod}`.`source`.`dim_customer`
  