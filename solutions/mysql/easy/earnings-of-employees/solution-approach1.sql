-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true
-- Problem     Top Earners
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 02:40 p.m.
-- ──────────────────────────────────────────────────

select max(salary * months),count(*) from employee group by (salary*months) order by (salary * months) desc limit 1;
