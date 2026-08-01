-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true
-- Problem     Weather Observation Station 5
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-04, 04:18 p.m.
-- Technique   union-ordered-limit-queries
-- Time        O(N log N)
-- Space       O(N)
-- Insight     The solution retrieves the lexicographically first city among those with the minimum and maximum lengths by sorting the entire dataset twice and selecting the top record from each result set.
-- Interview   Before: I would use a subquery to find the min and max lengths. After: I used UNION to combine two O(N log N) sorts, ensuring the lexicographical requirement is met by ordering by length then city name.
-- Pitfalls    (1) Failing to include the city name in the ORDER BY clause causes the query to return an arbitrary city instead of the lexicographically first one.  (2) Using UNION instead of UNION ALL might cause issues if the shortest and longest city names are identical, though this is impossible given the length constraint.
-- ──────────────────────────────────────────────────

(
  SELECT CITY, LENGTH(CITY) AS CITY_LENGTH
  FROM STATION
  ORDER BY LENGTH(CITY), CITY
  LIMIT 1
)
UNION
(
  SELECT CITY, LENGTH(CITY) AS CITY_LENGTH
  FROM STATION
  ORDER BY LENGTH(CITY) DESC, CITY
  LIMIT 1
);
