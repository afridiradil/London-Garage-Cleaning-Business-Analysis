-- Business Question 1: How many houses have a garage?

SELECT
    COUNT(*) AS houses_with_garage
FROM `circular-more-business-idea.london_houses.london_houses_data`
WHERE Garage = TRUE;
