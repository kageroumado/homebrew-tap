cask "rocuronium" do
  version "1.0"
  sha256 "ed8c83932ca1ad52adc01c8eeb66350a186511da079dbd143009b673f5a43e9d"

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
