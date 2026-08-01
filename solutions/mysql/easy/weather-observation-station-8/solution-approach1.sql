-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=true
-- Problem     Weather Observation Station 8
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-05, 08:47 a.m.
-- Technique   regex-like-string-matching
-- Time        O(N)
-- Space       O(N)
-- Insight     The query filters city names by checking if the first and last characters exist within the set of vowels using string functions.
-- Interview   Before: "How do I filter strings based on specific character positions?" After: "I use LEFT and RIGHT functions to isolate the boundary characters, ensuring O(N) time complexity while satisfying the requirement to exclude duplicates via the implicit distinct behavior of the set logic."
-- Pitfalls    (1) Failing to account for duplicate city names which requires the DISTINCT keyword in SQL.  (2) Assuming case-insensitivity without verifying if the database collation handles uppercase vowels automatically.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/
select city from station where 
left(city,1) in ('a','e','i','o','u') and
right(city,1) in ('a','e','i','o','u') ;
