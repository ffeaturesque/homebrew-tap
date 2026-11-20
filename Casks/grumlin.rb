cask "grumlin" do
  version "1.1"
  sha256 "4573d8803e5b67802d9c2ffa92301046bb91e372c47fb83261e64875647c3e92"

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
