# Field Notes

This note keeps the parsers assumptions visible beside the checks.

The domain cases cover `token drift`, `grammar width`, `label quality`, and `error locality`. They sit beside the smaller starter fixture so the project has both a compact scoring check and a domain-flavored review check.

`stale` tells me the happy path still works. `stress` tells me whether the guardrail still has teeth.

The language-specific addition keeps the review model in a module with Minitest coverage.
