cask "rocuronium" do
  version "1.6.2"
  sha256 "36a256d68e7aeb85273643e6a626717e1a654bd6c697d043badb43b9f7d6851e"

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
