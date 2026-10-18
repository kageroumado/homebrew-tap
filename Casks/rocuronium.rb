cask "rocuronium" do
  version "1.6.1"
  sha256 "3103953223b1825047fad9a966d16a9bd9215c082232f7516383dfa7d3f3e210"

  url "https://github.com/kageroumado/rocuronium/releases/download/v#{version}/Rocuronium-#{version}.dmg"
  name "Rocuronium"
  desc "Evidence-first UI control for AI agents that never takes the cursor"
  homepage "https://github.com/kageroumado/rocuronium"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Rocuronium.app"
  binary "#{appdir}/Rocuronium.app/Contents/Resources/rocuronium"
end
