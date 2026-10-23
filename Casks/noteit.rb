cask "noteit" do
  version "0.6.2"
  sha256 "c0cb7339b13d1325ae0dfca3fa82909500a3121e7fd5804d3dd6345579f24ea6"

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
