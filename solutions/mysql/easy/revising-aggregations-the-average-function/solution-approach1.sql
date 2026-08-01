-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem?isFullScreen=true
-- Problem     Revising Aggregations - Averages
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 01:34 p.m.
-- Technique   aggregate-function-with-filter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query filters the dataset by the district column before applying the average aggregate function to the population column.
-- Interview   Before: "How do I calculate the mean of a specific subset?" After: "Use the AVG() aggregate function combined with a WHERE clause to filter by district. This operation runs in O(N) time as it requires a full scan of the table to compute the average population for California."
-- Pitfalls    (1) Failing to use the correct case-sensitive string literal for the district name.  (2) Assuming the AVG function handles null values in the population column differently than standard SQL behavior.
-- ──────────────────────────────────────────────────

select avg(population) from city where district = 'california';
