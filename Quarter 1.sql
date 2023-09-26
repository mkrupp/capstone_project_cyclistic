/*
I started by UNION the tables together and creating a new table called year_cyclistic_data.
I used UNION so it would automaticly remove any duplicts in the information.
*/

SELECT
		ride_id,
		id_length,
		rideable_type,
		day_of_week,
		started_at,
		ended_at,
		ride_length,
		start_station_name,
		start_station_id,
		end_station_name,
		end_station_id,
		start_lat,
		start_lng,
		end_lat,
		end_lng,
		member_casual
	INTO 
			quarter_1_cyclistic_data
	FROM 
		public."2023_01_data"
	UNION
		SELECT *
		FROM
			public."2023_02_data"
	UNION
		SELECT *
		FROM
			public."2023_03_data";
/*
I generated the first query of the new table to confrim all columns are present. 
*/

SELECT
	DISTINCT *
FROM
	quarter_1_cyclistic_data;

/*
Total number of rows is 498286.
*/
SELECT
	COUNT(*)
FROM
	quarter_1_cyclistic_data;

/*
Now that the data is cleaned and combined.
I have my final table using DISTINCT there are no duplicates
*/

SELECT 
	DISTINCT *
FROM
	quarter_1_cyclistic_data;
	
/*
The breakdown for each user_type and total number of ride_id.
*/

SELECT
	COUNT(ride_id) AS total_ride_number,
	member_casual
FROM
	quarter_1_cyclistic_data
GROUP BY
	member_casual;

/*
average ride_length for the year by user_type
*/

SELECT
	AVG(ride_length) AS total_avg_ride,
	member_casual
FROM
	quarter_1_cyclistic_data
GROUP BY
	member_casual;

/*
average ride_length for each day of the week by user_type
*/

SELECT
	day_of_week,
	AVG(ride_length) AS total_avg_ride,
	member_casual
FROM
	quarter_1_cyclistic_data
GROUP BY
	day_of_week,
	member_casual;

