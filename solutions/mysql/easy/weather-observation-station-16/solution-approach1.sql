-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-16/problem?isFullScreen=true
-- Problem     Weather Observation Station 16
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 03:22 p.m.
-- Technique   min-aggregation-with-filter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query filters the dataset for values exceeding the threshold and computes the minimum of the remaining set before applying rounding.
-- Interview   Before: "I would sort the entire table and take the first record." After: "Using the min aggregate function is more efficient at O(N) time complexity, as it avoids a full sort while correctly identifying the smallest value greater than 38.7780."
-- Pitfalls    (1) Failing to use the ROUND function results in incorrect precision for the output.  (2) Using an incorrect comparison operator like >= instead of > violates the requirement to find values strictly greater than 38.7780.
-- ──────────────────────────────────────────────────

SELECT round(min(lat_n),4) from station where lat_n > 38.7780;
