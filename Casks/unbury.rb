cask "unbury" do
  version "0.1.1"
  sha256 "e9a9c4fc040fb17fe94f952480022dff1e87598e4a36dbfe23a6f83142c52bea"

  url "https://github.com/migsilva89/unbury/releases/download/v#{version}/Unbury-#{version}.dmg"
  name "Unbury"
  desc "Searches saved bookmarks by meaning rather than by title"
  homepage "https://unbury.migsilva.dev"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Unbury.app"
  binary "#{appdir}/Unbury.app/Contents/MacOS/unburyctl"

  zap trash: [
    "~/Library/Application Support/Unbury",
    "~/Library/Caches/com.migsilva.unbury",
    "~/Library/Preferences/com.migsilva.unbury.plist",
    "~/Library/Saved Application State/com.migsilva.unbury.savedState",
  ]
end
