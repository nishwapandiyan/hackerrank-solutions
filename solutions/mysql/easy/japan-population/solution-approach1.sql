-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/japan-population/problem?isFullScreen=true
-- Problem     Japan Population
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 01:45 p.m.
-- Technique   aggregate-sum-filter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query aggregates the population column by applying a filter on the countrycode column to isolate records matching the specific code for Japan.
-- Interview   Before: "How would you calculate the total population for a specific country?" After: "I would use the SUM aggregate function with a WHERE clause to filter by the country code, resulting in O(N) time complexity where N is the number of rows in the table."
-- Pitfalls    (1) Failing to use the exact string literal 'JPN' as specified in the problem requirements.  (2) Using an incorrect column name for the country code filter instead of the specified COUNTRYCODE column.
-- ──────────────────────────────────────────────────

select sum(population) from city where countrycode = 'jpn';
