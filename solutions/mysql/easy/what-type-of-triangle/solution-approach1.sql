-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true
-- Problem     Type of Triangle
-- Difficulty  Easy
-- Subdomain   Advanced Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 11:05 a.m.
-- Technique   case-when-conditional-logic
-- Time        O(N)
-- Space       O(1)
-- Insight     The query evaluates triangle validity using the triangle inequality theorem before checking side equality constraints in a specific hierarchical order.
-- Interview   Before: "How would you classify these triangles?" After: "I used a CASE statement to validate the triangle inequality theorem first, ensuring O(N) time complexity by checking the 'Not A Triangle' condition before specific types like Equilateral or Isosceles."
-- Pitfalls    (1) Failing to check the triangle inequality theorem (A+B > C) first results in incorrect classifications for invalid side lengths.  (2) Ordering the CASE branches incorrectly causes Equilateral triangles to be misclassified as Isosceles.
-- ──────────────────────────────────────────────────

SELECT 
case
when a+b <= c or b+c <=a or c+a <=b then 'Not A Triangle'
when a = b and b = c then 'Equilateral'
when a=b or b=c or c=a then 'Isosceles'
else 'Scalene'
end as triangle_type
from Triangles;

