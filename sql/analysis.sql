-- Iceland Tourism Analysis
-- Zapytania analityczne na danych Statistics Iceland

-- 1. Ranking lat wg liczby turystów zagranicznych
SELECT 
    Year,
    SUM(Value) as Total_Arrivals
FROM overnight
WHERE Citizenship = 'Foreigners'
  AND Unit = 'Arrivals'
  AND Month != 'Total'
GROUP BY Year
ORDER BY Total_Arrivals DESC;

-- 2. Zmiana rok do roku (YoY)
SELECT 
    Year,
    SUM(Value) as Total_Arrivals,
    ROUND((SUM(Value) - LAG(SUM(Value)) OVER (ORDER BY Year)) 
          / LAG(SUM(Value)) OVER (ORDER BY Year) * 100, 1) as YoY_Change_Pct
FROM overnight
WHERE Citizenship = 'Foreigners'
  AND Unit = 'Arrivals'
  AND Month != 'Total'
GROUP BY Year
ORDER BY Year;

-- 3. Sezonowość - średnia wg miesiąca (2015-2019)
SELECT 
    Month,
    ROUND(AVG(Value), 0) as Avg_Arrivals
FROM overnight
WHERE Citizenship = 'Foreigners'
  AND Unit = 'Arrivals'
  AND Year BETWEEN 2015 AND 2019
GROUP BY Month
ORDER BY Avg_Arrivals DESC;

-- 4. Top 10 krajów wg pasażerów Keflavik (2019)
SELECT 
    Country,
    SUM(Passengers) as Total_Passengers
FROM passengers
WHERE Year = 2019
  AND Country NOT IN ('Total Passengers', 'Foreigners', 'Iceland')
GROUP BY Country
ORDER BY Total_Passengers DESC
LIMIT 10;

-- 5. Obłożenie hoteli wg regionu (średnia 2019)
SELECT 
    Type as Region,
    ROUND(AVG(Value), 1) as Avg_Occupancy_Rate
FROM occupancy
WHERE Year = 2019
  AND Unit = 'Occupancy rate of rooms'
GROUP BY Type
ORDER BY Avg_Occupancy_Rate DESC;