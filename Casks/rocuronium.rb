cask "rocuronium" do
  version "1.1"
  sha256 "f0c1f9052eeda25ca4f86aa343fb009a0289f153689765e45dbd17272880cde8"

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
