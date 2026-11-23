cask "grumlin" do
  version "1.1.2"
  sha256 "4893ab6861ccfe17c242b47dcb523f62f5832705851cd1acd47358caee7b46f6"

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
