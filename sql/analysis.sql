
-- time to do some data exploration!! --
SELECT * FROM dbo.QuarterlyEarnings;


-- 1: How did Revenue Change quarter to quarter Globally? (keep in mind, change occurred globally in may 2023) --

SELECT Date, SUM(Revenue) as Total_Revenue, 
FROM dbo.QuarterlyEarnings
GROUP BY Date
ORDER BY Date;

