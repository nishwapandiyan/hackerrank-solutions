-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/average-population/problem?isFullScreen=true
-- Problem     Average Population
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 01:37 p.m.
-- Technique   aggregate-function-rounding
-- Time        O(N)
-- Space       O(1)
-- Insight     The query calculates the arithmetic mean of the population column and applies the round function to truncate the result to the nearest integer.
-- Interview   Before: "How would you calculate the average population and round it?" After: "I would use the AVG aggregate function wrapped in ROUND, which operates in O(N) time complexity to scan all rows in the CITY table."
-- Pitfalls    (1) Using ROUND instead of FLOOR might lead to rounding up instead of down for values with a decimal part of 0.5 or greater.  (2) Failing to account for the specific rounding behavior required by the problem statement when using the standard ROUND function.
-- ──────────────────────────────────────────────────

SELECT round(avg(population)) from  city;
