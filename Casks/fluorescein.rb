cask "fluorescein" do
  version "1.0.0"
  sha256 "8260301338a878f5385a231c9fb8b839c388e7fe4232ddb11bd505106d166b67"

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
