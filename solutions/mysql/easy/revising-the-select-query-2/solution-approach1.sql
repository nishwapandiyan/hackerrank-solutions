-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/revising-the-select-query-2/problem?isFullScreen=true
-- Problem     Revising the Select Query II
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-04, 02:52 p.m.
-- Technique   conditional-select-projection
-- Time        O(N)
-- Space       O(1)
-- Insight     The query filters the city table by applying a conjunctive predicate on the population and countrycode columns before projecting the name attribute.
-- Interview   Before: "How do you retrieve specific columns based on multiple criteria?" After: "Use a SELECT statement with a WHERE clause combining conditions with AND. This runs in O(N) time, where N is the number of rows in the table, ensuring only records matching the population threshold and country code are returned."
-- Pitfalls    (1) Failing to use the exact string literal 'USA' for the countrycode column comparison.  (2) Using an incorrect comparison operator instead of the strictly greater than operator for the population threshold.  (3) Omitting the mandatory WHERE clause, which would return all names in the table regardless of population or country.
-- ──────────────────────────────────────────────────

select name from city where population > 120000 and countrycode ='usa';
