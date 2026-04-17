cask "gather" do
  # Update version, sha256, and url when a new Gather release ships.
  # Pushing this file to jacob-purdy-rewst/homebrew-apps is the approval gate for device upgrades.
  version "TODO"
  sha256 "TODO"

  url "https://downloads.gather.town/mac/Gather-#{version}.dmg"
  name "Gather"
  desc "Virtual space for remote teams"
  homepage "https://gather.town"

  app "Gather.app"

  zap trash: [
    "~/Library/Application Support/gather",
    "~/Library/Caches/gather",
    "~/Library/Logs/gather",
    "~/Library/Preferences/town.gather.app.plist",
  ]
end
