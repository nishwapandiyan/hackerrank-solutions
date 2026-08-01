-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/salary-of-employees/problem?isFullScreen=true
-- Problem     Employee Salaries
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-05, 09:13 a.m.
-- Technique   simple-select-filter-sort
-- Time        O(N log N)
-- Space       O(N)
-- Insight     The query filters the employee dataset based on salary and tenure thresholds before ordering the resulting names by their unique identifier.
-- Interview   Before: "How would you retrieve specific employee names based on multiple numeric conditions?" After: "I would use a SELECT statement with a WHERE clause for the salary and months criteria, followed by an ORDER BY clause. This approach runs in O(N log N) time due to the sorting requirement, where N is the number of employees."
-- Pitfalls    (1) Confusing the strict inequality operators for salary and months, as the problem requires strictly greater than 2000 and strictly less than 10.  (2) Incorrectly sorting by name instead of the required employee_id column.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

select name from employee where salary > 2000 and months < 10 order by employee_id asc;
