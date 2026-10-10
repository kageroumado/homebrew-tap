cask "rocuronium" do
  version "1.5.0"
  sha256 "0474802cbaa43274a5124203b802ed0d701be6d1dbdd250f2904105c50867691"

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
