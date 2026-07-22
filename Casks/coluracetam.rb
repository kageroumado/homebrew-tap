cask "coluracetam" do
  version "1.1.1"
  sha256 "f2cc8e15c7e004950b6f960a584c852c8c134daa047267dce3f3b09bad7abefe"

  url "https://github.com/kageroumado/coluracetam/releases/download/v#{version}/Coluracetam-#{version}.dmg"
  name "Coluracetam"
  desc "Markdown reader with instant rendering in-app and in Quick Look"
  homepage "https://github.com/kageroumado/coluracetam"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Coluracetam.app"
end
