cask "adrafinil" do
  version "1.5.3"
  sha256 "14c1aaf8471286a753e5d2801133644ec8350546f7858cf6d65712f481dd726a"

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
