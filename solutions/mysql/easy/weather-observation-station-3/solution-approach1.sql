-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-3/problem?isFullScreen=true
-- Problem     Weather Observation Station 3
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-04, 03:13 p.m.
-- Technique   distinct-modulo-filtering
-- Time        O(N)
-- Space       O(N)
-- Insight     The query filters the station table for rows with even IDs using the modulo operator and removes duplicate city names using the distinct keyword.
-- Interview   Before: "How would you retrieve unique city names for even IDs?" After: "I would use SELECT DISTINCT with a WHERE clause containing MOD(ID, 2) = 0. This approach runs in O(N) time complexity, where N is the number of rows in the table, ensuring all duplicates are excluded as required."
-- Pitfalls    (1) Failing to use the DISTINCT keyword results in duplicate city names being returned in the output.  (2) Using an incorrect modulo condition like MOD(ID, 2) = 1 would return odd IDs instead of even IDs.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/
SELECT distinct city from station where mod(id,2)= 0;
