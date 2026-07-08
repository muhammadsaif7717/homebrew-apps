cask "gdrive-connector" do
  version "1.0.0"
  sha256 "bd5f2dc840ed85a39f2ab74092c1f3584df8aa73b40e78423bdb3ed0f99fcd2e"

  # Matches your exact GitHub asset delivery name structure
  url "https://github.com/muhammadsaif7717/GDriveConnector/releases/download/v#{version}/G.Drive.Connector-#{version}-arm64.dmg"
  name "G Drive Connector"
  desc "A modern and seamless Google Drive desktop client"
  homepage "https://github.com/vevonex/GDriveConnector"

  app "G Drive Connector.app"

  zap trash: [
    "~/Library/Application Support/gdriveconnector",
    "~/Library/Preferences/com.saif.gdriveconnector.plist",
    "~/Library/Logs/gdriveconnector",
    "~/Library/Saved Application State/com.saif.gdriveconnector.savedState",
  ]
end
