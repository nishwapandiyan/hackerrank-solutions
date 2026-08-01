-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/japanese-cities-name/problem?isFullScreen=true
-- Problem     Japanese Cities' Names
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-04, 03:04 p.m.
-- Technique   simple-select-where-filter
-- Time        O(N)
-- Space       O(N)
-- Insight     The query filters the city table by matching the countrycode column against the literal string 'JPN' to retrieve only the name column.
-- Interview   Before: "How would you extract specific records based on a categorical attribute?" After: "I would use a SELECT statement with a WHERE clause to filter rows, resulting in O(N) time complexity where N is the number of rows in the table."
-- Pitfalls    (1) Failing to use single quotes for the string literal 'JPN' causes a syntax error in SQL.  (2) Assuming the COUNTRYCODE column is case-insensitive without verifying the database collation settings.
-- ──────────────────────────────────────────────────

select name from city where countrycode = 'jpn';
