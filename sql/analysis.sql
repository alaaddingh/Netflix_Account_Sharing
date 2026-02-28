-- GLOBAL ARPA for 2022 and 2023 --
SELECT
    YEAR(Date) AS Year,
    SUM(CAST(Revenue AS FLOAT)) / SUM(Average_Paying_Memberships) / 3.0 AS Global_ARPA
FROM dbo.QuarterlyEarnings
WHERE YEAR(Date) IN (2022, 2023)
GROUP BY YEAR(Date)
ORDER BY Year;


-- Global Subscribers and Revenue QoQ ---
SELECT 
    Date,
    SUM(CAST(Revenue AS FLOAT)) * 1000 AS Global_Revenue, 
    SUM(CAST(Average_Paying_Memberships AS FLOAT)) * 1000 AS Global_Memberships
FROM dbo.QuarterlyEarnings
GROUP BY Date
ORDER BY Date;



-- 2023 Global QoQ Revenue and Memberships --
SELECT 
    Date,
    SUM(CAST(Revenue AS FLOAT)) * 1000 AS Global_Revenue, 
    SUM(CAST(Average_Paying_Memberships AS FLOAT)) * 1000 AS Global_Memberships
FROM dbo.QuarterlyEarnings
WHERE YEAR(Date) = 2023
GROUP BY Date
ORDER BY Date;

-- Annual ARPA Per Region --
SELECT
    YEAR(Date) AS Year,
    Location,
    SUM(CAST(Revenue AS FLOAT)) / SUM(Average_Paying_Memberships) / 3.0 AS ARPA
FROM dbo.QuarterlyEarnings
GROUP BY YEAR(Date), Location
ORDER BY Year, Location;
