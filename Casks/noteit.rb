cask "noteit" do
  version "0.5.0"
  sha256 "c7af3b44cd7c60743c83355d0959e98a7d2923d59e9910ba2c29742b69624390"

  url "https://github.com/rutbergphilip/noteit/releases/download/v#{version}/NoteIt-#{version}.dmg"
  name "NoteIt"
  desc "Fast notes with Quick Capture and encrypted sync"
  homepage "https://github.com/rutbergphilip/noteit"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "NoteIt.app"

  zap trash: [
    "~/Library/Application Support/NoteIt",
    "~/Library/Caches/io.github.rutbergphilip.noteit",
    "~/Library/HTTPStorages/io.github.rutbergphilip.noteit",
    "~/Library/Preferences/io.github.rutbergphilip.noteit.plist",
    "~/Library/Saved Application State/io.github.rutbergphilip.noteit.savedState",
  ]
end
