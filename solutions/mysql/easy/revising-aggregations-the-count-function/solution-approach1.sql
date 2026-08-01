-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem?isFullScreen=true
-- Problem     Revising Aggregations - The Count Function
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 01:30 p.m.
-- Technique   aggregate-count-with-filter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query utilizes the aggregate count function to return the total number of rows that satisfy the population threshold condition.
-- Interview   Before: "How would you count specific records?" After: "I use the COUNT function combined with a WHERE clause to filter rows by population. This approach runs in O(N) time as it performs a full table scan to evaluate the condition for each city."
-- Pitfalls    (1) Using count(column_name) instead of count(*) may exclude rows where the specified column contains NULL values.  (2) Failing to include the correct population threshold of 100,000 as specified in the problem statement.
-- ──────────────────────────────────────────────────

select count(district) from city where population > 100000;
