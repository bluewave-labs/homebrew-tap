cask "dodoclip" do
  version "1.1.0"
  sha256 "940d44f895a0eb06186479f65967b4bff44a86157b82c0d31dcf2b9573c45255"

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
