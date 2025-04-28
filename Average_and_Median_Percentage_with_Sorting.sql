WITH Stats AS (                          -- Create a temporary result (CTE) named Stats
  SELECT
    Name,                                -- Candidate Name
    Party,                               -- Political Party
    AVG(Percentage) AS Average_Percentage, 
    -- AVERAGE: Measures the overall survey performance by adding all scores and dividing by count
    APPROX_QUANTILES(Percentage, 100)[OFFSET(50)] AS Median_Percentage 
    -- MEDIAN: Shows the middle survey score, giving a better idea when there are extreme values
  FROM
    `catalystbytes.ph_election.sws_survey` -- Your dataset and table
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
