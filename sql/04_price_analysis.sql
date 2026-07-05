-- Business Question 5:
-- Do houses with garages have higher average property values?

SELECT
    Garage,
    ROUND(AVG(Price), 2) AS average_property_price
FROM `circular-more-business-idea.london_houses.london_houses_data`
GROUP BY Garage;
