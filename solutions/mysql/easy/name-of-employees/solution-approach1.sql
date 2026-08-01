-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/name-of-employees/problem?isFullScreen=true
-- Problem     Employee Names
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-05, 09:11 a.m.
-- Technique   simple-select-order-by
-- Time        O(N log N)
-- Space       O(N)
-- Insight     The query retrieves the name column from the Employee table and sorts the resulting set in ascending lexicographical order.
-- Interview   Before: "How would you list all employee names alphabetically?" After: "I would use a SELECT statement with an ORDER BY clause on the name column, which results in O(N log N) time complexity due to the sorting requirement."
-- Pitfalls    (1) Failing to specify the ASC keyword or omitting the ORDER BY clause entirely will not guarantee the required alphabetical output.  (2) Assuming the database collation is case-insensitive when the problem might require case-sensitive sorting.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

select name from employee order by name asc; 
