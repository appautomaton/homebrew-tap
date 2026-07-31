# appautomaton/homebrew-tap

Homebrew formulae published by AppAutomaton.

## Install

```bash
brew tap appautomaton/tap
brew install docker-for-apple-container
```

Or in a single command:

```bash
brew install appautomaton/tap/docker-for-apple-container
```

## Formulae

- **docker-for-apple-container** — Docker CLI compatibility shim over Apple's
  `container` CLI. Lets you run `docker` and `docker compose` commands backed by
  Apple's native `container`, with no Docker Desktop. macOS only (Apple Silicon).
  Source: https://github.com/appautomaton/docker-for-apple-container

## Updating docker-for-apple-container

The `Update docker-for-apple-container` workflow checks the latest published
GitHub release every six hours and can also be run manually. When a newer
release exists, it downloads that exact tag archive, calculates its SHA-256,
updates and validates the formula, then commits the bump directly to `main`
using the repository's built-in `GITHUB_TOKEN`.

For a local or recovery update, run:

```bash
scripts/update-docker-for-apple-container v0.1.4
scripts/validate-docker-for-apple-container
```

Omit the tag to resolve the latest published release through `gh`. Users pick
up a committed formula update on their next `brew update`.
