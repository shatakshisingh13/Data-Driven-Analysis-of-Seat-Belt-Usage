-- Query 1: Yearly seatbelt usage and total fatalities
SELECT year,
       ROUND(AVG(seatbelt), 3) AS avg_seatbelt,
       ROUND(SUM(fatalities), 3) AS total_fatalities
FROM seatbelts
GROUP BY year
ORDER BY year ASC;

-- Query 2: Top 10 states by average fatalities
SELECT state,
       ROUND(AVG(fatalities), 3) AS avg_fatalities,
       ROUND(AVG(seatbelt), 3) AS avg_seatbelt
FROM seatbelts
GROUP BY state
ORDER BY avg_fatalities DESC
LIMIT 10;
