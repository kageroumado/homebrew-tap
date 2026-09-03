cask "rilmazafone" do
  version "2.4"
  sha256 "e1f0cbc822f2e01f16fad146809f71a93d5c7efa19bcce36e53a2f730965fa5c"

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
