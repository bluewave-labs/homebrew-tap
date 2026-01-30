cask "dodoshot" do
  version "1.2.0"
  sha256 "3c27c39ee7a0fce5826ee7bc1425fa1b2cb8ccf9a2e43b6932f4dbb4d7b17b9d"

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
