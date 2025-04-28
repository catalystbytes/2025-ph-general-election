# SWS Survey Data Analysis for 2025 Philippine Senatorial Election

## Overview

This repository contains the SQL queries and analysis related to the **Social Weather Stations (SWS) National Survey on 21 April 2025** for the 2025 Philippine senatorial election. The project is focused on cleaning, transforming, and analyzing survey data to understand public opinion on senatorial candidates.

The data is collected, cleaned, and then imported into Google BigQuery for analysis. The SQL queries provided here perform tasks such as calculating averages, medians, and creating pivot tables to track the performance of candidates over multiple months.

## Data Source

The data used in this analysis comes from the **Social Weather Stations (SWS)**, based on their **National Survey conducted on 21 April 2025**. The survey tracks public opinion on the upcoming 2025 Philippine senatorial election.

## Tools and Technologies Used

- **Google BigQuery**: A powerful, fully-managed data warehouse that is used to store and analyze the data.
- **SQL**: Queries to process and analyze the data.
- **SWS National Survey Data**: Used to generate insights on the performance of senatorial candidates.

## Project Structure

### `queries/`
This directory contains SQL queries that perform various tasks:
1. **`pivot_survey_data.sql`**: Pivot the survey data to display candidate performance by month.
2. **`calculate_median.sql`**: Calculate the median percentage of each candidate's performance.
3. **`calculate_average_and_median.sql`**: Calculate both average and median performance for the top 12 candidates.

### `data/`
This directory will contain the cleaned data file (e.g., CSV or exported BigQuery table), ready to be loaded into BigQuery for further analysis.

## How to Run

1. **Set Up Google Cloud Project**
   - Ensure you have access to Google Cloud Platform and BigQuery.
   - Create a project and enable BigQuery API.

2. **Import Data**
   - Clean the data (if needed) and upload it into a BigQuery table.

3. **Run SQL Queries**
   - Execute the SQL queries provided in the `queries/` folder on your BigQuery console.

4. **View the Results**
   - The results will provide insights into the candidates' performance over time, including averages and medians.

## Example SQL Queries

### 1. Pivot Survey Data by Month
This query pivots survey data by candidate name and tracks their performance across months.

```sql
SELECT
  Name,
  AVG(CASE WHEN FORMAT_DATE('%Y-%m', Date) = '2024-12' THEN Percentage END) AS `2024-Dec`,
  AVG(CASE WHEN FORMAT_DATE('%Y-%m', Date) = '2025-01' THEN Percentage END) AS `2025-Jan`,
  AVG(CASE WHEN FORMAT_DATE('%Y-%m', Date) = '2025-02' THEN Percentage END) AS `2025-Feb`,
  AVG(CASE WHEN FORMAT_DATE('%Y-%m', Date) = '2025-03' THEN Percentage END) AS `2025-Mar`,
  AVG(CASE WHEN FORMAT_DATE('%Y-%m', Date) = '2025-04' THEN Percentage END) AS `2025-Apr`
FROM
  `your_project.your_dataset.sws_survey`
WHERE
  Election = '2025 Philippine general election'
GROUP BY
  Name
ORDER BY
  Name;

# Example 2: Calculate Median Performance for 2025 Philippine Senatorial Candidates

## Overview

This SQL query calculates the **Median** performance for each senatorial candidate in the **2025 Philippine General Election**. The median is a valuable statistic in survey analysis because it represents the middle value when survey results are ordered, making it less sensitive to extreme outliers compared to the average. By calculating the median, we can obtain a clearer representation of the "typical" survey result.

## Data Source

The data used in this analysis is sourced from the **Social Weather Stations (SWS) National Survey on 21 April 2025**. The survey tracks public opinion on the upcoming **2025 Philippine senatorial election**.

## SQL Query Explanation

The query calculates the median percentage of each candidate's performance across all available survey data. It uses BigQuery's `APPROX_QUANTILES` function to calculate the median, which is the middle value when the data is sorted from the smallest to the largest.

### SQL Query:

```sql
SELECT
  Name,                                  -- Candidate Name
  Party,                                 -- Political Party
  APPROX_QUANTILES(Percentage, 100)[OFFSET(50)] AS Median_Percentage 
  -- MEDIAN: The middle value when percentages are ordered from smallest to largest (shows the "typical" survey result, less sensitive to outliers)
FROM
  `your_project.your_dataset.sws_survey` -- Your dataset and table
WHERE
  Election = '2025 Philippine general election' -- Filter for 2025 election only
GROUP BY
  Name, Party                            -- Group by candidate and party
ORDER BY
  Median_Percentage DESC                 -- Sort highest to lowest median
LIMIT 12;                                 -- Get top 12 candidates
# Example 3: Calculate Both Average and Median Performance for 2025 Philippine Senatorial Candidates

## Overview

This SQL query calculates both the **Average** and **Median** performance for each senatorial candidate in the **2025 Philippine General Election**. The **average** provides the overall mean of the survey results, while the **median** represents the middle value when the data is ordered, offering a more robust measure that is less sensitive to extreme values or outliers.

Both statistics are valuable for analyzing the survey performance of candidates, with the average showing overall trends and the median providing a more typical representation of the candidate's standing.

## Data Source

The data used in this analysis is sourced from the **Social Weather Stations (SWS) National Survey on 21 April 2025**. The survey tracks public opinion on the upcoming **2025 Philippine senatorial election**.

## SQL Query Explanation

This query combines the use of two key metrics: the **average** and the **median**. It first calculates the average percentage of performance for each candidate and then uses BigQuery's `APPROX_QUANTILES` function to estimate the median. Both statistics are calculated for each candidate, grouped by name and party.

### SQL Query:

```sql
WITH Stats AS (                          -- Create a temporary result (CTE) named Stats
  SELECT
    Name,                                -- Candidate Name
    Party,                               -- Political Party
    AVG(Percentage) AS Average_Percentage, 
    -- AVERAGE: Measures the overall survey performance by adding all scores and dividing by count
    APPROX_QUANTILES(Percentage, 100)[OFFSET(50)] AS Median_Percentage 
    -- MEDIAN: Shows the middle survey score, giving a better idea when there are extreme values
  FROM
    `your_project.your_dataset.sws_survey` -- Your dataset and table
  WHERE
    Election = '2025 Philippine general election' -- Filter for 2025 election only
  GROUP BY
    Name, Party                          -- Group by candidate and party
)

SELECT
  Name,                                  -- Candidate Name
  Party,                                 -- Political Party
  Average_Percentage,                    -- Display the average value
  Median_Percentage                      -- Display the median value
FROM
  Stats
ORDER BY
  Median_Percentage DESC,                -- Sort primarily by median (fairer comparison)
  Average_Percentage DESC                -- If tie, sort by average
LIMIT 12;                                 -- Show top 12 candidates
