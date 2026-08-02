cask "coluracetam" do
  version "1.2.0"
  sha256 "3001148f9cfc8ea5ba0877316b153f179beb18f661d90f4ce7ee1a45c0cd54a5"

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
