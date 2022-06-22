/* This is because I loaded the whole data into PostgreSQL and 
my system started hanging.😂😁 */

-- SELECT * INTO main_trip
-- FROM yellow_tripdata
-- LIMIT 1048576;

SELECT *, TO_CHAR("tpep_pickup_datetime", 'Day') AS "day_of_the_week"
FROM main_trip;

-- 1
SELECT (COUNT("tpep_pickup_datetime") / COUNT(DISTINCT("tpep_pickup_datetime"))) 
	AS "Average trips"
FROM (
	SELECT *, TO_CHAR("tpep_pickup_datetime", 'Day') AS "day_of_the_week"
	FROM main_trip
) AS full_table
WHERE "day_of_the_week" LIKE 'Sat%';

-- 2
SELECT ROUND(AVG("fare_amount"), 2) AS "Average fare"
FROM (
	SELECT *, TO_CHAR("tpep_pickup_datetime", 'Day') AS "day_of_the_week"
	FROM main_trip
) AS full_table
WHERE "day_of_the_week" LIKE 'Sat%';

-- 3


-- 4
SELECT (COUNT("tpep_pickup_datetime") / COUNT(DISTINCT("tpep_pickup_datetime"))) 
	AS "Average trips"
FROM (
	SELECT *, TO_CHAR("tpep_pickup_datetime", 'Day') AS "day_of_the_week"
	FROM main_trip
) AS full_table
WHERE "day_of_the_week" LIKE 'Sun%';

-- 5
SELECT ROUND(AVG("fare_amount"), 2) AS "Average fare"
FROM (
	SELECT *, TO_CHAR("tpep_pickup_datetime", 'Day') AS "day_of_the_week"
	FROM main_trip
) AS full_table
WHERE "day_of_the_week" LIKE 'Sun%';

-- 6
