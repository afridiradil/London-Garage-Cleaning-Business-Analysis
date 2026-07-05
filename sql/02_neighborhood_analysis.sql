-- Business Question 2 & 3:
-- Which neighborhoods have the highest number and percentage of houses with garages?

SELECT
    Neighborhood,
    COUNT(*) AS total_houses,
    SUM(CAST(Garage AS INT64)) AS houses_with_garage,
    ROUND(
        SUM(CAST(Garage AS INT64)) * 100.0 / COUNT(*),
        2
    ) AS garage_percentage
FROM `circular-more-business-idea.london_houses.london_houses_data`
GROUP BY Neighborhood
ORDER BY garage_percentage DESC;
