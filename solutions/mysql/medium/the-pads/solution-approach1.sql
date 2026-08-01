-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true
-- Problem     The PADS
-- Difficulty  Medium
-- Subdomain   Advanced Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 12:19 p.m.
-- Technique   string-concatenation-and-aggregation
-- Time        O(N log N)
-- Space       O(N)
-- Insight     The solution uses string concatenation to format names with their occupation initials and performs a grouped count to summarize occupation frequencies sorted by count and name.
-- Interview   Before: "How would you format and aggregate data from a single table?" After: "I would use CONCAT and LEFT for string manipulation, and GROUP BY with ORDER BY to handle the O(N log N) sorting requirements for both the alphabetical list and the frequency counts."
-- Pitfalls    (1) Failing to use the lower() function on the occupation name as required by the output format.  (2) Incorrectly ordering the second result set by failing to include the occupation name in the ORDER BY clause for tie-breaking.  (3) Omitting the plural 's' suffix in the final output string as specified in the problem description.
-- ──────────────────────────────────────────────────

select concat(name,'(',left(occupation,1),')') from occupations order by name;
SELECT concat('There are a total of ',count(*),' ',lower(occupation),'s.') from occupations 
group by occupation
order by count(*),occupation;
