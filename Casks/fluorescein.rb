cask "fluorescein" do
  version "1.3.0"
  sha256 "8b3a3a901b301d5c9c1c72d831a6da7e134c3545a6ac75da5b89fc7fcb32c2ae"

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
