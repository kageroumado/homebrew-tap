cask "rilmazafone" do
  version "2.7"
  sha256 "2ac6504440b349dca801e4773cb418c342d47d342472c8f0956e335fa01f775e"

  url "https://github.com/kageroumado/rilmazafone/releases/download/v#{version}/Rilmazafone-#{version}.dmg",
      verified: "github.com/kageroumado/"
  name "Rilmazafone"
  desc "Visual designer and builder for DMG disk images"
  homepage "https://kagerou.glass/rilmazafone/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Rilmazafone.app"
end
