cask "dodoshot" do
  version "1.2.8"
  sha256 "e243d0ac3388fc7021bb0d0d438c4dae306106b60d02e13bcbca1ec0af62820a"

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
