# Onyx Parse Markdown Scope Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | token drift | 174 | ship |
| stress | grammar width | 127 | watch |
| edge | label quality | 163 | ship |
| recovery | error locality | 179 | ship |
| stale | token drift | 207 | ship |

Start with `stale` and `stress`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`stale` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
