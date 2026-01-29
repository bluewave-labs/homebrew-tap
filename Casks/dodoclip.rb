cask "dodoclip" do
  version "1.2.0"
  sha256 "9c01572e177eb27ba6a1e920e43be50052261a803f6bea9155ae6df68a167e89"

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
