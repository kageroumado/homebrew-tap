cask "adrafinil" do
  version "1.5.2"
  sha256 "57e3e934017a196d3730b62dd572e6bbfbcf7395c3f33b0751fc1f5d95c4784d"

  url "https://github.com/kageroumado/adrafinil/releases/download/v#{version}/Adrafinil-#{version}.dmg",
      verified: "github.com/kageroumado/"
  name "Adrafinil"
  desc "Utility that keeps the machine awake while AI coding agents are working"
  homepage "https://kagerou.glass/adrafinil/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Adrafinil.app"
end
