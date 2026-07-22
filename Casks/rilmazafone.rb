cask "rilmazafone" do
  version "1.1"
  sha256 "85cb6da6cb68c1d3425f15c1a07e476031372e704a8971b237c5e2451efe548f"

  url "https://github.com/kageroumado/rilmazafone/releases/download/v#{version}/Rilmazafone-#{version}.dmg"
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
