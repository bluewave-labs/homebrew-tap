cask "dodoclip" do
  version "1.2.2"
  sha256 "38f74288062605216857b21e2401e78b020e6e646acbad736fff93a61cfba668"

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
