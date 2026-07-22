cask "dantrolene" do
  version "1.2"
  sha256 "899ff66a7ca33cfd06fb77481e25b06dcee6ee491187cb1fbd5d5ff001717c54"

  url "https://github.com/kageroumado/dantrolene/releases/download/v#{version}/Dantrolene-#{version}.dmg",
      verified: "github.com/kageroumado/"
  name "Dantrolene"
  desc "Menu bar utility that prevents screen lock on trusted Wi-Fi networks"
  homepage "https://kagerou.glass/dantrolene/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Dantrolene.app"
end
