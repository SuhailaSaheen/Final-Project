select * from `sample - superstore`;
SELECT *
FROM `sample - superstore`
WHERE Sales IS NOT NULL
  AND Quantity IS NOT NULL
  AND Profit IS NOT NULL;
  SELECT 
  COALESCE(Sales, 0) AS Sales,
  COALESCE(City, 'Unknown') AS City,
  Quantity,
  Profit
FROM `sample - superstore`;
CREATE VIEW clean_superstore AS
SELECT *
FROM `sample - superstore`
WHERE Sales IS NOT NULL
  AND Quantity IS NOT NULL
  AND Profit IS NOT NULL;
  SELECT 
  SUM(CASE WHEN Sales IS NULL THEN 1 ELSE 0 END) AS Sales_nulls,
  SUM(CASE WHEN Quantity IS NULL THEN 1 ELSE 0 END) AS Quantity_nulls,
  SUM(CASE WHEN Profit IS NULL THEN 1 ELSE 0 END) AS Profit_nulls
FROM `sample - superstore`;
SELECT 
    `Category`,
    `Sub-Category`,
    SUM(`Sales`) AS Total_Sales,
    SUM(`Profit`) AS Total_Profit,
    CASE 
        WHEN SUM(`Sales`) = 0 THEN 0
        ELSE ROUND(SUM(`Profit`) / SUM(`Sales`), 4)
    END AS Profit_Margin
FROM 
    `sample - superstore`
GROUP BY 
    `Category`, `Sub-Category`
ORDER BY 
    Profit_Margin DESC;
    






