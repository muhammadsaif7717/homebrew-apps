cask "gdrive-connector" do
  version "1.0.0"
  sha256 "a107c43ce341de65828a7096bd69c60f9790272e94bea86286e6009bbf20eb84"

  url "https://github.com/muhammadsaif7717/GDriveConnector/releases/download/v#{version}/G.Drive.Connector-#{version}-arm64.dmg"

  name "G Drive Connector"
  desc "A modern and seamless Google Drive desktop client"
  homepage "https://github.com/muhammadsaif7717/GDriveConnector"

  app "G Drive Connector.app"

  zap trash: [
    "~/Library/Application Support/gdriveconnector",
    "~/Library/Preferences/com.saif.gdriveconnector.plist",
    "~/Library/Logs/gdriveconnector",
    "~/Library/Saved Application State/com.saif.gdriveconnector.savedState",
  ]
end
