cask "grumlin" do
  version "1.1.1"
  sha256 "640b83ae25bc3d9550b7b70a2121f6ee8d84ec913baed1bb9fad21e610da44af"

  url "https://github.com/ffeaturesque/grumlin/releases/download/v#{version}/Grumlin-#{version}.dmg"
  name "Grumlin"
  desc "Menu bar gremlin that keeps the computer awake"
  homepage "https://github.com/ffeaturesque/grumlin"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Grumlin.app"
  binary "#{appdir}/Grumlin.app/Contents/Resources/grumlin"

  zap trash: [
    "~/Library/Caches/com.featuresque.grumlin",
    "~/Library/HTTPStorages/com.featuresque.grumlin",
    "~/Library/Preferences/com.featuresque.grumlin.plist",
  ]
end
