-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/revising-aggregations-sum/problem?isFullScreen=true
-- Problem     Revising Aggregations - The Sum Function
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 01:33 p.m.
-- Technique   aggregate-sum-filter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query aggregates the population column by summing all values that satisfy the equality constraint on the district column.
-- Interview   Before: "How would you calculate the total population for a specific district?" After: "I would use the SUM aggregate function combined with a WHERE clause to filter by district, resulting in O(N) time complexity as the database performs a full scan of the table."
-- Pitfalls    (1) Failing to use the correct column name 'Population' or 'District' as defined in the schema.  (2) Omitting the single quotes around the string literal 'California' which causes a syntax error.  (3) Assuming the sum function handles null values differently than the standard SQL behavior of ignoring them.
-- ──────────────────────────────────────────────────

SELECT sum(population) from city where district = 'california';
