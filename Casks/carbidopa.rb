cask "carbidopa" do
  version "1.0"
  sha256 "4f7c9b40ca3f11ee6683242c404648cd84ea5a247f987ecd3da9975c3b7ce46a"

  url "https://github.com/kageroumado/carbidopa/releases/download/#{version}/Carbidopa.dmg"
  name "Carbidopa"
  desc "Menu bar proxy exposing GitHub Copilot as Anthropic- and OpenAI-compatible APIs"
  homepage "https://github.com/kageroumado/carbidopa"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Carbidopa.app"
end
