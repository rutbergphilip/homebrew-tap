cask "noteit" do
  version "0.3.0"
  sha256 "df65db3b260ee34ba0cdedad086883adaad301b9f90b192a2a05b6cb27b0a3aa"

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
