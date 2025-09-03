USE DATABASE free_company_dataset;
SHOW SCHEMAS;
USE SCHEMA free_company_dataset.public;
SHOW TABLES;
SELECT * FROM free_company_dataset.public.FREECOMPANYDATASET LIMIT 10;

DESCRIBE TABLE free_company_dataset.public.FREECOMPANYDATASET;
 SELECT COUNT(*) FROM free_company_dataset.public.FREECOMPANYDATASET;
SELECT COUNT(DISTINCT Country) FROM free_company_dataset.public.FREECOMPANYDATASET;
SELECT Country, COUNT(*) AS NumberOfCompanies
FROM free_company_dataset.public.FREECOMPANYDATASET
GROUP BY Country;

SELECT Country, COUNT(*) AS NumberOfCompanies
FROM free_company_dataset.public.FREECOMPANYDATASET
GROUP BY Country;

SELECT Country, COUNT(*) AS NumberOfCompanies
FROM free_company_dataset.public.FREECOMPANYDATASET
GROUP BY Country
HAVING  Country IN ('SWE','DNK','FIN','ISL')
ORDER BY NumberOfCompanies DESC;


SELECT Country, COUNT(*) AS NumberOfCompanies
FROM free_company_dataset.public.FREECOMPANYDATASET
WHERE Country IN ('SWE', 'FIN', 'DNK', 'ISL', 'NOR')
GROUP BY Country
ORDER BY NumberOfCompanies DESC;
SELECT DISTINCT Country
FROM free_company_dataset.public.FREECOMPANYDATASET
ORDER BY Country;

SELECT Country, COUNT(*) AS NumberOfCompanies
FROM free_company_dataset.public.FREECOMPANYDATASET
WHERE Country IN ('SWEDEN', 'FINLAND', 'DENMARK', 'ICELAND', 'NORWAY')
GROUP BY Country
ORDER BY NumberOfCompanies DESC;

SELECT DISTINCT Country
FROM free_company_dataset.public.FREECOMPANYDATASET
WHERE Country ILIKE '%swed%' 
   OR Country ILIKE '%fin%' 
   OR Country ILIKE '%den%' 
   OR Country ILIKE '%ice%' 
   OR Country ILIKE '%nor%'
ORDER BY Country;

SELECT Country, COUNT(*) AS NumberOfCompanies
FROM free_company_dataset.public.FREECOMPANYDATASET
WHERE Country ILIKE 'sweden'
   OR Country ILIKE 'finland'
   OR Country ILIKE 'denmark'
   OR Country ILIKE 'iceland'
   OR Country ILIKE 'norway'
GROUP BY Country
ORDER BY NumberOfCompanies DESC;

SELECT 
    CASE 
        WHEN Country = 'sweden'  THEN 'SWE'
        WHEN Country = 'finland' THEN 'FIN'
        WHEN Country = 'denmark' THEN 'DNK'
        WHEN Country = 'iceland' THEN 'ISL'
        WHEN Country = 'norway'  THEN 'NOR'
        ELSE UPPER(Country)  -- fallback if some other country slips in
    END AS CountryCode,
    COUNT(*) AS NumberOfCompanies
FROM free_company_dataset.public.FREECOMPANYDATASET
WHERE Country IN ('sweden', 'finland', 'denmark', 'iceland', 'norway')
GROUP BY CountryCode
ORDER BY NumberOfCompanies DESC;
