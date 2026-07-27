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
-- Interview   Before: "How would you calculate the average population?" After: "I would use the AVG aggregate function on the population column. Since the problem requires rounding down, I use the ROUND function, which operates in O(N) time complexity to scan all rows in the CITY table."
-- Pitfalls    (1) Using ROUND instead of FLOOR may lead to rounding up for values with a decimal part of 0.5 or greater, which contradicts the requirement to round down.  (2) Failing to account for NULL values in the population column, as AVG ignores them by default.
-- ──────────────────────────────────────────────────

SELECT round(avg(population)) from  city;
