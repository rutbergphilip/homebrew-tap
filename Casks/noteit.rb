cask "noteit" do
  version "0.7.0"
  sha256 "8fab144bcac6d3fa3441b88b755bc3034352f6a597e78721a66c4951286d13f4"

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
