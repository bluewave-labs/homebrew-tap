cask "dodoshot" do
  version "1.2.9"
  sha256 "e11a5a8909a516fde39655c51f2a6272fa281023899ea0817efebd1599ced434"

  url "https://github.com/bluewave-labs/DodoShot/releases/download/v#{version}/DodoShot-#{version}.dmg"
  name "DodoShot"
  desc "Beautiful, open-source screenshot tool for macOS"
  homepage "https://github.com/bluewave-labs/DodoShot"

  depends_on macos: ">= :sonoma"

  app "DodoShot.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/DodoShot.app"],
                   sudo: false
  end

  caveats <<~EOS
    DodoShot requires Screen Recording and Accessibility permissions.
    Grant these in System Settings > Privacy & Security after first launch.
  EOS

  zap trash: [
    "~/Library/Application Support/DodoShot",
    "~/Library/Caches/com.dodoshot.app",
    "~/Library/Preferences/com.dodoshot.app.plist",
  ]
end
