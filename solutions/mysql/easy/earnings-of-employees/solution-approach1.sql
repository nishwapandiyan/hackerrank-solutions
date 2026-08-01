-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true
-- Problem     Top Earners
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 02:40 p.m.
-- Technique   group-by-aggregation-limit
-- Time        O(N log N)
-- Space       O(N)
-- Insight     The query calculates total earnings per employee, groups them to identify the maximum value, and selects the count of employees associated with that specific maximum.
-- Interview   Before: "How would you find the top earner and their count?" After: "I would group by the calculated earnings, sort descending, and limit to one to retrieve the maximum and its frequency in O(N log N) time, where N is the number of employees."
-- Pitfalls    (1) Failing to group by the calculated expression results in an invalid query in strict SQL modes.  (2) Using a subquery instead of a limit clause may be less efficient for finding the single maximum value.
-- ──────────────────────────────────────────────────

select max(salary * months),count(*) from employee group by (salary*months) order by (salary * months) desc limit 1;
