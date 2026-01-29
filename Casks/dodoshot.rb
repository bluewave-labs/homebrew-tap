cask "dodoshot" do
  version "1.0.0"
  sha256 "d194757b05b7e0df68a7829d47db5b0b730d190f1d50369656d1e7bd682295b0"

  url "https://github.com/bluewave-labs/DodoShot/releases/download/v#{version}/DodoShot-#{version}.dmg"
  name "DodoShot"
  desc "Beautiful, open-source screenshot tool for macOS"
  homepage "https://github.com/bluewave-labs/DodoShot"

  depends_on macos: ">= :sonoma"

  app "DodoShot.app"

  zap trash: [
    "~/Library/Application Support/DodoShot",
    "~/Library/Caches/com.dodoshot.app",
    "~/Library/Preferences/com.dodoshot.app.plist",
  ]
end
