cask "macsync-and-restore" do
  version "1.0.1"
  sha256 "1edb4b699d5eb99a531133d468cf2d3c8d7c2c603f62103f411621b2a95ce928"

  # Matches your exact GitHub asset delivery name structure
  url "https://github.com/muhammadsaif7717/macsync-and-restore/releases/download/v#{version}/MacSync.Restore-#{version}-arm64.dmg"
  name "MacSync & Restore"
  desc "Backup, sync, and restore utility for macOS"
  homepage "https://github.com/muhammadsaif7717/macsync-and-restore"

  app "MacSync & Restore.app"

  zap trash: [
    "~/Library/Application Support/MacSync & Restore",
    "~/Library/Preferences/com.macsyncandrestore.app.plist",
    "~/Library/Logs/MacSync & Restore",
    "~/Library/Saved Application State/com.macsyncandrestore.app.savedState",
  ]
end
