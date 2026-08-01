-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-12/problem?isFullScreen=true
-- Problem     Weather Observation Station 12
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-05, 08:56 a.m.
-- Technique   regex-free-string-filtering
-- Time        O(N)
-- Space       O(N)
-- Insight     The query filters unique city names by verifying that both the first and last characters are absent from the set of vowels using string functions.
-- Interview   Before: "How would you filter strings based on character positions?" After: "I use LEFT and RIGHT functions to isolate boundary characters, ensuring O(N) time complexity while satisfying the distinct requirement to exclude duplicates."
-- Pitfalls    (1) Failing to account for case sensitivity if the database collation is case-sensitive.  (2) Assuming the city name length is always greater than one, though the logic holds for single-character names.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

select distinct city from station WHERE
left(city,1) not in ('a','e','i','o','u') AND
right(city,1) not in ('a','e','i','o','u');
