cask "rilmazafone" do
  version "2.2"
  sha256 "0093caa67a0a9bf5e1d537e9892abb7e23ed40606167a7898fa882c3b7cf2be6"

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
