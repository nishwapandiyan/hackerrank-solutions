# ──────────────────────────────────────────────────
# Link        https://www.hackerrank.com/challenges/python-tuples/problem?isFullScreen=true
# Problem     Tuples 
# Difficulty  Easy
# Subdomain   Basic Data Types
# Platform    HackerRank
# Language    python
# Status      Accepted
# Submitted   2026-03-10, 11:08 p.m.
# ──────────────────────────────────────────────────

if __name__ == '__main__':
   n = int(raw_input())
   integer_list = tuple(map(int, raw_input().split()))
   print hash(integer_list)
