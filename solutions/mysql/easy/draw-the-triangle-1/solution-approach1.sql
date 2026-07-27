-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/draw-the-triangle-1/problem?isFullScreen=true
-- Problem     Draw The Triangle 1
-- Difficulty  Easy
-- Subdomain   Alternative Queries
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-10, 02:57 p.m.
-- ──────────────────────────────────────────────────

SELECT repeat("* ", @row:=@row-1)
from information_schema.tables,(SELECT @row := 21) as r limit 20;
