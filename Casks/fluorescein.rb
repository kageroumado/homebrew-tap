cask "fluorescein" do
  version "1.2.0"
  sha256 "a2190b14ac8f58c9d69607b6251d3d454d367de2e309839cb031d18fe3204f5b"

  url "https://github.com/kageroumado/fluorescein/releases/download/v#{version}/Fluorescein-#{version}.dmg"
  name "Fluorescein"
  desc "Menu bar monitor that names why the computer is slow and offers the fix"
  homepage "https://github.com/kageroumado/fluorescein"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Fluorescein.app"
  binary "#{appdir}/Fluorescein.app/Contents/Resources/fluorescein"
end
