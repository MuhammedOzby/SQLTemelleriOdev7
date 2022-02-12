-- Example 1st
SELECT rating FROM film 
GROUP BY rating;
-- Example 2nd
SELECT replacement_cost, COUNT(*) AS "cnt" FROM film 
GROUP BY replacement_cost 
HAVING COUNT(*) > 50 
ORDER BY "cnt";
-- Example 3rd
SELECT store_id, COUNT(*) AS "cnt" FROM customer 
GROUP BY store_id;
-- Example 4th
SELECT country_id, COUNT(*) AS "city-count" FROM city 
GROUP BY country_id 
ORDER BY "city-count" DESC 
LIMIT 1;