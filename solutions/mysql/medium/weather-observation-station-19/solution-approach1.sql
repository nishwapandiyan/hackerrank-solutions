-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-19/problem?isFullScreen=true
-- Problem     Weather Observation Station 19
-- Difficulty  Medium
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 03:59 p.m.
-- Technique   aggregate-math-functions
-- Time        O(N)
-- Space       O(1)
-- Insight     The query calculates the Euclidean distance between two points defined by the extreme values of latitude and longitude using standard SQL aggregate functions.
-- Interview   Before: "How would you calculate the distance between two points defined by min/max coordinates?" After: "I use aggregate functions to find the bounds in O(N) time, then apply the Euclidean distance formula with ROUND to meet the 4-decimal requirement."
-- Pitfalls    (1) Failing to use the ROUND function results in default precision, which violates the 4-decimal digit requirement.  (2) Incorrectly pairing latitude and longitude bounds as (min_lat, min_long) and (max_lat, max_long) instead of the specified (min_lat, min_long) and (max_lat, max_long) logic.
-- ──────────────────────────────────────────────────

SELECT round(sqrt((pow((max(lat_n) - min(lat_n)),2)) + (pow((max(long_w) - 
min(long_w)),2)) ),4) from station;
