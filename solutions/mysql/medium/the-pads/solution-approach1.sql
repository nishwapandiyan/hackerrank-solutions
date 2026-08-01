-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true
-- Problem     The PADS
-- Difficulty  Medium
-- Subdomain   Advanced Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 12:19 p.m.
-- ──────────────────────────────────────────────────

select concat(name,'(',left(occupation,1),')') from occupations order by name;
SELECT concat('There are a total of ',count(*),' ',lower(occupation),'s.') from occupations 
group by occupation
order by count(*),occupation;
