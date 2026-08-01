-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true
-- Problem     Type of Triangle
-- Difficulty  Easy
-- Subdomain   Advanced Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 11:05 a.m.
-- ──────────────────────────────────────────────────

SELECT 
case
when a+b <= c or b+c <=a or c+a <=b then 'Not A Triangle'
when a = b and b = c then 'Equilateral'
when a=b or b=c or c=a then 'Isosceles'
else 'Scalene'
end as triangle_type
from Triangles;

