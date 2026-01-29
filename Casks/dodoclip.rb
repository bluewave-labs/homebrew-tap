cask "dodoclip" do
  version "1.1.1"
  sha256 "1978b2e371c13a61ceaabfaeaae91ce1f2865a082cb884ad09b59d8c79cd3c3d"

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
