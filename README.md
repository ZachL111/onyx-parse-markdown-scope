# onyx-parse-markdown-scope

`onyx-parse-markdown-scope` is a compact Ruby repository for parsers, centered on this goal: Implement a Ruby parsers project for markdown resource planning, using capacity fixtures and allocation and spill reports.

## Purpose

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Onyx Parse Markdown Scope Review Notes

Start with `token drift` and `grammar width`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## What Is Covered

- `fixtures/domain_review.csv` adds cases for token drift and grammar width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/onyx-parse-markdown-walkthrough.md` walks through the case spread.
- The Ruby code includes a review path for `token drift` and `grammar width`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Notes

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The added Ruby path is deliberately direct, with fixtures doing most of the explaining.

## Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Audit Path

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Limits

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
