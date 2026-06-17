cask "ds-mon" do
  version "2.5.0"
  sha256 :no_check

  url "https://github.com/Cherno76/DS-mon/releases/download/v#{version}/DS-mon-v#{version}.zip"
  name "DS-mon"
  desc "macOS menu bar API balance & usage monitor (DeepSeek / Moonshot)"
  homepage "https://github.com/Cherno76/DS-mon"
 
  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "DS-mon.app"

  zap trash: [
    "~/Library/Caches/com.dsmon.app/",
    "~/Library/Preferences/com.dsmon.app.plist",
  ]
end
