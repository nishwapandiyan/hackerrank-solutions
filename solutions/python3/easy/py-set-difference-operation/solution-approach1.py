# ──────────────────────────────────────────────────
# Link        https://www.hackerrank.com/challenges/py-set-difference-operation/problem?isFullScreen=true
# Problem     Set .difference() Operation
# Difficulty  Easy
# Subdomain   Sets
# Platform    HackerRank
# Language    python3
# Status      Accepted
# Submitted   2026-07-09, 11:20 p.m.
# ──────────────────────────────────────────────────

n = int(input())
l1 = set(list(map(int,input().split())))
s = int(input())
l2 = set(list(map(int,input().split())))
print(len(l1 - l2))
