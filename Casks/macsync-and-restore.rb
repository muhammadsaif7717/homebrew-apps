cask "macsync-and-restore" do
  version "1.0.0"
  sha256 "74b71091ab2d2dd5c072d9720e43ce39f04b46904a8d1b86095aa3ed0a2e3bb2"

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