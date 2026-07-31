cask "coluracetam" do
  version "1.1.2"
  sha256 "2eeaa637ecfc5e6ba807bee76a6b2c507e19947218cbcdc46af9a4d887899813"

  url "https://github.com/kageroumado/coluracetam/releases/download/v#{version}/Coluracetam-#{version}.dmg"
  name "Coluracetam"
  desc "Markdown reader with instant rendering in-app and in Quick Look"
  homepage "https://github.com/kageroumado/coluracetam"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Coluracetam.app"
end
