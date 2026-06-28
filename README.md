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

## Updating a formula for a new release

1. Cut a tagged release in the source repo (for example `v0.1.0`).
2. Get the release tarball's sha256:
   ```bash
   curl -sL https://github.com/appautomaton/docker-for-apple-container/archive/refs/tags/v0.1.0.tar.gz | shasum -a 256
   ```
3. Update the `url` version and `sha256` in
   `Formula/docker-for-apple-container.rb`.
4. Commit and push. Users pick it up on the next `brew update`.
