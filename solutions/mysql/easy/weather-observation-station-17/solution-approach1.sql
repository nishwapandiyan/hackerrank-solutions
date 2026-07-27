-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-17/problem?isFullScreen=true
-- Problem     Weather Observation Station 17
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 03:26 p.m.
-- Technique   subquery-min-filter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query identifies the smallest northern latitude exceeding the threshold and retrieves the corresponding western longitude using a correlated subquery approach.
-- Interview   Before: "I would use a join to find the minimum latitude." After: "Using a subquery is more efficient here, achieving O(N) time complexity to scan the table once while correctly filtering for the smallest latitude greater than 38.7780 and rounding the result to four decimal places."
-- Pitfalls    (1) Failing to use the ROUND function results in incorrect output precision.  (2) Using an incorrect comparison operator like >= instead of > violates the problem constraint.  (3) Omitting the subquery causes the query to return multiple longitude values instead of the specific one associated with the minimum latitude.
-- ──────────────────────────────────────────────────

SELECT round(long_w,4) from station where lat_n = 
(SELECT min(lat_n) from station where lat_n > 38.7780);
