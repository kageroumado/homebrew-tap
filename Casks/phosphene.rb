cask "phosphene" do
  version "1.2.2"
  sha256 "4bb51500afd3336a59c4463421ce06a9dce23dfaf4cdd23d52fee8f89c0b890e"

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

  app "Phosphene.app"
end
