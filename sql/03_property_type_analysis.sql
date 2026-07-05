-- Business Question 4:
-- Which property type has the highest percentage of garages?

SELECT
    Property_Type,
    COUNT(*) AS total_houses,
    SUM(CAST(Garage AS INT64)) AS houses_with_garage,
    ROUND(
        SUM(CAST(Garage AS INT64)) * 100.0 / COUNT(*),
        2
    ) AS garage_percentage
FROM `circular-more-business-idea.london_houses.london_houses_data`
GROUP BY Property_Type
ORDER BY garage_percentage DESC;
