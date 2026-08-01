-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/japanese-cities-attributes/problem?isFullScreen=true
-- Problem     Japanese Cities' Attributes
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-04, 03:03 p.m.
-- Technique   select-star-where-clause
-- Time        O(N)
-- Space       O(N)
-- Insight     The query retrieves all columns for rows matching the specific country code filter.
-- Interview   Before: "How do I filter rows in SQL?" After: "Use the WHERE clause to restrict results. This query runs in O(N) time, where N is the number of rows in the CITY table, by scanning for the JPN country code."
-- Pitfalls    (1) Failing to use single quotes for the string literal 'JPN' causes a syntax error.  (2) Assuming the column name is case-sensitive when the database collation might be case-insensitive.
-- ──────────────────────────────────────────────────

select * from city where countrycode = 'jpn';
