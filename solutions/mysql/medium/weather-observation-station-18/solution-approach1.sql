-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true
-- Problem     Weather Observation Station 18
-- Difficulty  Medium
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 03:36 p.m.
-- Technique   aggregate-function-math
-- Time        O(N)
-- Space       O(1)
-- Insight     The Manhattan distance between two points (a, b) and (c, d) is calculated by summing the absolute differences of their coordinates, which simplifies to the sum of the range of each dimension.
-- Interview   Before: "How would you calculate the distance between two points defined by extreme values in a dataset?" After: "I use aggregate functions to find the min and max of each column in O(N) time, then compute the Manhattan distance using the absolute difference formula rounded to four decimal places."
-- Pitfalls    (1) Failing to use the ROUND function to exactly four decimal places as required by the problem statement.  (2) Incorrectly applying the Euclidean distance formula instead of the Manhattan distance formula specified in the problem.
-- ──────────────────────────────────────────────────

SELECT round((abs(min(lat_n) - max(lat_n)) + abs(min(long_w) - max(long_w))),4) from station;
