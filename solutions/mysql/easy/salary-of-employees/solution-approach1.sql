-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/salary-of-employees/problem?isFullScreen=true
-- Problem     Employee Salaries
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-05, 09:13 a.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

select name from employee where salary > 2000 and months < 10 order by employee_id asc;
