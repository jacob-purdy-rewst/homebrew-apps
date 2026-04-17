# homebrew-apps

Custom Homebrew tap for Rewst-managed macOS apps. This tap is the approval gate for app updates — pushing an updated cask definition here is what triggers upgrades on managed devices.

## Usage

```bash
brew tap jacob-purdy-rewst/apps
brew install --cask <appname>
```

## How Updates Work

Managed Macs run a daily LaunchDaemon (deployed via Microsoft Intune) that checks this tap for outdated casks and upgrades them automatically. To release an update:

1. Update the `version`, `sha256`, and `url` fields in the relevant cask under `Casks/`
2. Commit and push to `main`
3. Devices will pick up the update at 17:00 local time

## Casks

| Cask | App | Notes |
|------|-----|-------|
| `gather` | [Gather](https://gather.town) | Virtual space for remote teams |

## Adding a New App

1. Add `Casks/appname.rb` to this repo — use an existing cask as a template
2. Create a first-run install script in `jacob-purdy-rewst/internal-it` under `mdm/intune/app-deployments/macos/homebrew/appname/`
3. Deploy the install script via Intune — the existing LaunchDaemon handles all future upgrades automatically

## Related

- [internal-it](https://github.com/jacob-purdy-rewst/internal-it) — Intune deployment scripts and LaunchDaemon for this tap
