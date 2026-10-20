cask "noteit" do
  version "0.4.0"
  sha256 "7bced7535c7944e0ff34de6696e8408de24bbb9a56e03b4bace789902315b17c"

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
