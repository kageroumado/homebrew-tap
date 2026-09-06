cask "rilmazafone" do
  version "2.6"
  sha256 "adcc38f60149256df5194b7619295246f9fe85bebe919dd9896e0c1fd999daaa"

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
