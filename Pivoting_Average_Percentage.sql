SELECT
  Name,                                     -- Candidate name
  -- Pivoting the survey date to specific months (2024-Dec, 2025-Jan, etc.)
  AVG(CASE WHEN FORMAT_DATE('%Y-%m', Date) = '2024-12' THEN Percentage END) AS `2024-Dec`,
  AVG(CASE WHEN FORMAT_DATE('%Y-%m', Date) = '2025-01' THEN Percentage END) AS `2025-Jan`,
  AVG(CASE WHEN FORMAT_DATE('%Y-%m', Date) = '2025-02' THEN Percentage END) AS `2025-Feb`,
  AVG(CASE WHEN FORMAT_DATE('%Y-%m', Date) = '2025-03' THEN Percentage END) AS `2025-Mar`,
  AVG(CASE WHEN FORMAT_DATE('%Y-%m', Date) = '2025-04' THEN Percentage END) AS `2025-Apr`
FROM
  `catalystbytes.ph_election.sws_survey`
WHERE
  Election = '2025 Philippine general election' -- Focus only on 2025 election
GROUP BY
  Name
ORDER BY
  Name;                                   -- Clean ordering by name
