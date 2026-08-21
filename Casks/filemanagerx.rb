cask "filemanagerx" do
  version "1.2.0"
  sha256 "7c43fdcf3aa6575eafc79e21ae35855eba28a64fafae8abf85a40a301e129348"

  url "https://filemanagerx-web.pages.dev/releases/v#{version}/FileManagerX.dmg"
  name "FileManagerX"
  desc "Dual-pane file manager for macOS with cloud, archive, and MTP support"
  homepage "https://filemanagerx-web.pages.dev"

  livecheck do
    url "https://filemanagerx-web.pages.dev/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "FileManagerX.app"

  zap trash: [
    "~/Library/Application Support/FileManagerX",
    "~/Library/Caches/FileManagerX",
    "~/Library/Preferences/com.filemanagerx.app.plist",
    "~/Library/Saved Application State/com.filemanagerx.app.savedState",
  ]
end
