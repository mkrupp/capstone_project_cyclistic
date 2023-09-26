Data Analysis Project: Case 1 Cyclistic

Data Analyst: 
Michele Rupp

Key Stakeholders:
Lily Moreno & Cyclistic Executive Team

Purpose:
Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends.

Business Task:
To identify how annual members and casual riders use Cyclistic bikes differently.

Data Sources:
I am using the website Divvy bicycle sharing service (Index of bucket "https://divvy-tripdata.s3.amazonaws.com/index.html") for my datasets for Cyclistic.  
  - Reliable: I obtained one-quarter of the data needed for this project.
  - Original: this source is the City of Chicago's Divvy bicycle-sharing service, which collected the data as first-party data.
  - Comprehensive: There are several null values, but there is enough sample size to complete this project.
  - Current: I will be using 1/2023 to 3/2023 data to complete my analysis.
  - Cited: The license is by Motivate International Inc. (https://www.divvybikes.com/data-license-agreement).

Prepare:
I have decided to work with Quarter 1 of 2023. For this project, I downloaded the CSV files for 2023_01 to 2023_03.
I saved my originals in a file called "Original Datasets) for reference after cleaning and processing the data.

What I did inside Excel to clean the datasets:
  - Verify that all CSV files have the same column names and data types.
  - Changed the data types of the columns for started_at and ended_at to m/dd/yyyy hh:mm:ss
  - Created a new column called ride_length using the started_at to ended_at to find how long each ride took. I customized the column to show the hours and minutes.
      * Formula: =(D2-C2), and then I made sure to format hh:mm:ss
  - I removed all 00:00 ride_length
  - I also removed all negative numbers located under ride_length
  - I created another column called day_of_week. To help with the data, see what days members prefer compared to causal riders. I created a formula: =WEEKDAY(D2, 1) noting that 1=Monday to 7= Saturday
  - I removed all ride_id that were less or more than 16 characters
  - I removed all rows with NULL values.

Analyze:
Combined them all into one xls spreadsheet called Q1.xls
I ran a few calculations in Q1
  - The mean of ride_length: For both user types, the average ride_length is eleven minutes and forty-six seconds.
  - The max ride_length is  58 minutes
  - The mode of day_of_week:  Wednesday is the busiest day of the week for Cyclistic.
  - Created a pivot table to calculate the:
      * The average ride_length for members and casual riders
      * Casual: 16 minutes and 43 seconds
      * Member: 10 minutes and 23 seconds.
  - The average ride_length for users by day_of_week
      * The casual riders use the bikes longer on Sunday and Monday.
  - The number of rides for users by day_of_week
      * The highest ride count during the week is on Wednesday, at 88,128 rides.
  - The next highest is on Thursday at 8,3487 rides.
    
Using SQL
-         I created three tables for each month.
-         Then, I joined all three into one table for running my queries.
-         I found the total number of rides, then I broke it down by user_type by using GROUP BY user_type to get their total count for each type
        Total rides are 498,286 for the quarter
       *   Casual: 109,181
       *   Members: 389,105
-         Then I broke down the average ride length for each day of the week GROUP BY user_type and day_of_week. To use as one of my graphs

Share

After my analysis, I can identify key differences in how annual members and casual riders use Cyclistic bikes differently.
- I created another version of my xls Q1_v2 for Tableau.  
- I have added a new column called convert_ride_length_decimal_mintues. To help me to aggregate my graphs with a number value.
Here is the link to my Tableau dashboard: https://public.tableau.com/app/profile/michele.rupp/viz/CapstoneProjectCyclistic_16957430686630/Dashboard1?publish=yes

Based on the data, some critical behavioral differences exist between annual members and casual riders beyond ride length. It would be helpful to explore these differences to develop effective marketing strategies to convert casual riders into yearly members. Additionally, the SQL analysis provided some valuable insights, such as that Wednesday is the busiest day of the week for Cyclistic. The average ride length for casual riders is longer on Sunday and Tuesday. In contrast, the average ride length for member riders is longer on Wednesday and Thursday. 
By breaking down the data by user type and day of the week, we can better understand how to optimize our marketing efforts and improve overall user experience. The average ride length for each day, causal rides, was almost double that of members on Sunday and Saturday. The total rides for the quarter were 498,286. Members were the highest in rides by 279,924 for quarter one. Though there were more member rides, the data showed causal riders' length on average was 6 minutes and 20 seconds longer than member riders.
I've noticed that there has been an increase in the number of rides taken as we transition from the winter months of January and February to the spring months of March. Another impact on marketing strategies is that it may be beneficial to highlight the improved weather conditions and encourage more people to take advantage of the nicer weather by using our ride services.
