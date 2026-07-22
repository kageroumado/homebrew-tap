cask "phosphene" do
  version "1.2.1"
  sha256 "fb2efb3964d92b8ad35d4a619f1bb9769a5d87b75648dcc748c3a8f3044d3123"

  url "https://github.com/kageroumado/phosphene/releases/download/v#{version}/Phosphene-#{version}.dmg",
      verified: "github.com/kageroumado/"
  name "Phosphene"
  desc "Use any video as your desktop and lock screen wallpaper"
  homepage "https://kagerou.glass/phosphene/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Phosphene.app"
end
