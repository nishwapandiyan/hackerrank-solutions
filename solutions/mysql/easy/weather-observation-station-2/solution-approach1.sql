-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-2/problem?isFullScreen=true
-- Problem     Weather Observation Station 2
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 02:43 p.m.
-- Technique   aggregate-sum-rounding
-- Time        O(N)
-- Space       O(1)
-- Insight     The query computes the sum of all entries in the specified columns and applies rounding to two decimal places as required by the problem statement.
-- Interview   Before: "I need to calculate the total latitude and longitude." After: "I used the SUM aggregate function combined with ROUND to ensure the output matches the two-decimal precision requirement, resulting in O(N) time complexity where N is the number of rows in the station table."
-- Pitfalls    (1) Failing to use the ROUND function will result in precision errors relative to the required two-decimal output format.  (2) Incorrectly ordering the columns in the SELECT statement violates the specified output format of lat followed by lon.
-- ──────────────────────────────────────────────────

select round(sum(lat_n),2) ,round(sum(long_w),2) from station;
