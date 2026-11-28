cask "fluorescein" do
  version "1.1.0"
  sha256 "801f88d16087fd7f493dd3b65d95664df0920a5b535cf87ee1f99495c74cf1a7"

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
