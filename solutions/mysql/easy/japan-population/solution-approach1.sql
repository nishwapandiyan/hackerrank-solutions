-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/japan-population/problem?isFullScreen=true
-- Problem     Japan Population
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 01:45 p.m.
-- ──────────────────────────────────────────────────

select sum(population) from city where countrycode = 'jpn';
