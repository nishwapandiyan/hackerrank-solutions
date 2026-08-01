-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/select-by-id/problem?isFullScreen=true
-- Problem     Select By ID
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-04, 02:54 p.m.
-- Technique   simple-where-clause-filter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query retrieves all columns for a specific record by applying an equality filter on the primary key column.
-- Interview   Before: "How do I fetch a specific row by its ID?" After: "You use a SELECT statement with a WHERE clause to filter by the ID column, resulting in O(N) time complexity for a full table scan or O(log N) if indexed."
-- Pitfalls    (1) Failing to include all columns by using SELECT * instead of specific column names if the schema changes.  (2) Assuming the ID column is indexed when performance requirements might necessitate an index for O(log N) lookup.
-- ──────────────────────────────────────────────────

SELECT * from city where id = 1661;
