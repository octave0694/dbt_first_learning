
  
    
        create or replace table `dbt_tutorial_prod`.`gold`.`source_gold_items`
      
      
  using delta
      
      
      
      
      
      
      
      as
      WITH dedup_query AS (
    SELECT
        *,
        ROW_NUMBER() OVER (PARTITION BY id ORDER BY updateDate DESC) AS deduplication_id
    FROM 
        `dbt_tutorial_prod}`.`source`.`items`
)

SELECT
    id,
    name,
    category,
    updateDate
FROM
    dedup_query
WHERE
    deduplication_id = 1
  