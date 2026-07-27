-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/draw-the-triangle-2/problem?isFullScreen=true
-- Problem     Draw The Triangle 2
-- Difficulty  Easy
-- Subdomain   Alternative Queries
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-10, 03:02 p.m.
-- ──────────────────────────────────────────────────

select repeat("* ",@row := @row+1)
FROM information_schema.tables ,(select @row := 0) as r limit 20;
