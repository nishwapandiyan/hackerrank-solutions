-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-14/problem?isFullScreen=true
-- Problem     Weather Observation Station 14
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 02:51 p.m.
-- Technique   aggregate-max-with-filter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query identifies the maximum latitude value strictly below the specified threshold and rounds the result to four decimal places.
-- Interview   Before: "How would you find the largest latitude under a specific limit?" After: "I use the MAX aggregate function with a WHERE clause to filter values below 137.2345, then apply ROUND to format the output. This runs in O(N) time as it requires a full table scan."
-- Pitfalls    (1) Using ROUND instead of TRUNCATE may lead to incorrect results if the fifth decimal place is five or greater.  (2) Failing to filter the LAT_N values strictly less than 137.2345 as required by the problem statement.
-- ──────────────────────────────────────────────────

select round(max(lat_n),4) from station where lat_n < 137.2345;
