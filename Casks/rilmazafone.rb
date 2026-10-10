cask "rilmazafone" do
  version "2.11.0"
  sha256 "0b583c1eb9fca985273e6a2f99d5328833d4afb8a700db39cd597ee5fd63b4e0"

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
