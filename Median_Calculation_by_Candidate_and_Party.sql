SELECT
  Name,                                  -- Candidate Name
  Party,                                 -- Political Party
  APPROX_QUANTILES(Percentage, 100)[OFFSET(50)] AS Median_Percentage 
  -- MEDIAN: The middle value when percentages are ordered from smallest to largest (shows the "typical" survey result, less sensitive to outliers)
FROM
  `catalystbytes.ph_election.sws_survey` -- Your dataset and table
WHERE
  Election = '2025 Philippine general election' -- Filter for 2025 election only
GROUP BY
  Name, Party                            -- Group by candidate and party
ORDER BY
  Median_Percentage DESC                 -- Sort highest to lowest median
LIMIT 12;                                 -- Get top 12 candidates
