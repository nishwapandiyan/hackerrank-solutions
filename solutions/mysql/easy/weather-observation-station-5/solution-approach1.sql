-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true
-- Problem     Weather Observation Station 5
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-04, 04:18 p.m.
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
