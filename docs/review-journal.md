# Review Journal

I treated `onyx-parse-markdown-scope` as a project where the smallest useful behavior should still be inspectable.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its parsers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `token drift`, score 174, lane `ship`
- `stress`: `grammar width`, score 127, lane `watch`
- `edge`: `label quality`, score 163, lane `ship`
- `recovery`: `error locality`, score 179, lane `ship`
- `stale`: `token drift`, score 207, lane `ship`

## Note

This file is intentionally plain so the fixture remains the source of truth.
