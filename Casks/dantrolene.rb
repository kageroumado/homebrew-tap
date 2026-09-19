cask "dantrolene" do
  version "1.3"
  sha256 "99c92bf09c6fbaca0051d5db47a68e791d0186970363463b1369d85077d646b3"

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
