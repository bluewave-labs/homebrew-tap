cask "dodoclip" do
  version "1.2.1"
  sha256 "57d4d60cbb704954719af62303552f753fcb633adce8f30698dffd5409f23fbb"

  url "https://github.com/bluewave-labs/dodoclip/releases/download/v#{version}/DodoClip-#{version}.dmg"
  name "DodoClip"
  desc "Free, open-source clipboard manager for macOS"
  homepage "https://github.com/bluewave-labs/dodoclip"

  depends_on macos: ">= :sonoma"

  app "DodoClip.app"

  zap trash: [
    "~/Library/Application Support/DodoClip",
    "~/Library/Preferences/com.dodoclip.app.plist",
    "~/Library/Caches/DodoClip",
  ]
end
