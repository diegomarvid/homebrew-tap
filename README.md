# Homebrew Tap for Transcript CLI

CLI for the [Transcript App](https://github.com/diegomarvid/transcript-app) — manage recordings, tags, sharing, and detect meetings.

## Install

```bash
brew install diegomarvid/tap/transcript
```

## Usage

```bash
transcript status --json          # Check meeting status (camera, apps)
transcript list --today           # List today's sessions
transcript info latest            # Show details of last recording
transcript tag latest --add sales # Add tags
transcript share latest           # Copy to shared folder
```

All commands support `--json` for machine-readable output.

## Requirements

- macOS 14+ (Sonoma)
- Apple Silicon (arm64)
