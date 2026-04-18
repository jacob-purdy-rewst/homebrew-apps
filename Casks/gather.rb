cask "gather" do
  # Update version, sha256, and url when a new Gather release ships.
  # Pushing this file to jacob-purdy-rewst/homebrew-apps is the approval gate for device upgrades.
  version "1.37.1"
  sha256 "3fcdbc7c4a2ab678fc299b2b68ab64af023c43d0deb0940ff8f244fcacac57cd"

  url "https://publicintuneapps.blob.core.windows.net/applications/Gather.dmg"
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
