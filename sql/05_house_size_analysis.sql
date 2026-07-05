-- Business Question 6:
-- Are houses with garages generally larger?

SELECT
    Garage,
    ROUND(AVG('Square Meters'), 2) AS average_house_size
FROM `circular-more-business-idea.london_houses.london_houses_data`
GROUP BY Garage;
