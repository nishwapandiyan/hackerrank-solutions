-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-9/problem?isFullScreen=true
-- Problem     Weather Observation Station 9
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-05, 08:51 a.m.
-- Technique   distinct-filtering-with-not-in
-- Time        O(N)
-- Space       O(N)
-- Insight     The query filters unique city names by checking if the first character is absent from the set of lowercase vowels using the LEFT function.
-- Interview   Before: "How would you exclude cities starting with vowels?" After: "I use the DISTINCT keyword to remove duplicates and a NOT IN clause on the first character to ensure O(N) time complexity, where N is the number of rows in the STATION table."
-- Pitfalls    (1) Failing to use DISTINCT results in duplicate city names, violating the problem requirement.  (2) Using NOT IN without handling case sensitivity might miss uppercase vowels if the database collation is case-sensitive.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/
select distinct city from station 
where left(city,1) NOT in ('a','e','i','o','u');
