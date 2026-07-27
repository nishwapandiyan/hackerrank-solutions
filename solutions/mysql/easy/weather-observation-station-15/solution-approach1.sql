-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-15/problem?isFullScreen=true
-- Problem     Weather Observation Station 15
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 03:16 p.m.
-- Technique   subquery-max-filter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query identifies the maximum northern latitude below the specified threshold and retrieves the corresponding western longitude from the same record.
-- Interview   Before: "I would use a join to match the latitude." After: "I used a subquery to isolate the maximum latitude under 137.2345, which runs in O(N) time, then projected the rounded longitude."
-- Pitfalls    (1) Failing to use the ROUND function to exactly four decimal places as required by the problem statement.  (2) Incorrectly using a greater-than operator instead of the less-than operator specified for the latitude filter.
-- ──────────────────────────────────────────────────

select round(long_w,4) from station WHERE lat_n = (select max(lat_n) from station where lat_n < 137.2345);
