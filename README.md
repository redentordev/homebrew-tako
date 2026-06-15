# Homebrew Tap For Tako CLI

This tap packages [Tako CLI](https://github.com/redentordev/tako-cli).

## Install

One-command install:

```bash
brew install redentordev/tako/tako
```

Or manually tap first:

```bash
brew tap redentordev/tako
brew install tako
```

If Homebrew asks you to trust the tap, run:

```bash
brew trust redentordev/tako
```

## Upgrade

```bash
brew update
brew upgrade tako
```

## Brewfile

```ruby
tap "redentordev/tako"
brew "tako"
```

## Release Source

The formula installs prebuilt binaries from GitHub Releases:

https://github.com/redentordev/tako-cli/releases
