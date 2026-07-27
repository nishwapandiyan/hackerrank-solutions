-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-13/problem?isFullScreen=true
-- Problem     Weather Observation Station 13
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 02:47 p.m.
-- Technique   aggregate-sum-with-range-filter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query filters the dataset by a specific latitude range and computes the sum of the remaining values, rounding the final result to four decimal places.
-- Interview   Before: "I would iterate through the table and manually sum the values." After: "I used the SUM aggregate function with a WHERE clause to filter the range in O(N) time, ensuring the result is rounded to four decimal places as required."
-- Pitfalls    (1) Using inclusive operators like >= or <= instead of the strictly greater than and less than requirements specified in the problem.  (2) Applying the round function before the sum instead of after, which could lead to precision errors.  (3) Failing to filter by the exact latitude bounds 38.7880 and 137.2345.
-- ──────────────────────────────────────────────────

select round(sum(lat_n),4) from station where lat_n >38.7880 and lat_n < 137.2345
