-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true
-- Problem     Revising the Select Query I
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-04, 02:51 p.m.
-- Technique   select-where-clause-filtering
-- Time        O(N)
-- Space       O(1)
-- Insight     The query retrieves all columns for rows in the CITY table that satisfy both the population threshold and the country code equality condition.
-- Interview   Before: "How would you filter rows based on multiple criteria?" After: "I use the WHERE clause with AND to enforce both the population > 100000 and CountryCode = 'USA' constraints, resulting in O(N) time complexity where N is the number of rows in the table."
-- Pitfalls    (1) Failing to use double quotes or single quotes for the string literal USA causes a syntax error.  (2) Using an incorrect comparison operator like >= instead of > violates the requirement for populations strictly larger than 100000.
-- ──────────────────────────────────────────────────

SELECT * from city where population > 100000 and countrycode = "usa";
