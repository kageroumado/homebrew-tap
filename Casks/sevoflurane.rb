cask "sevoflurane" do
  version "1.15.2"
  sha256 "43fdde3b02ccee2268831449255a0374c59b9cbd624e846b7ba2b5d4a350e333"

  url "https://github.com/kageroumado/sevoflurane/releases/download/v#{version}/Sevoflurane-#{version}.dmg"
  name "Sevoflurane"
  desc "Runs the Windows Steam client and its games in native windows"
  homepage "https://kagerou.glass/sevoflurane/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Sevoflurane.app"
  binary "#{appdir}/Sevoflurane.app/Contents/Helpers/sevo"

  uninstall launchctl: "glass.kagerou.sevoflurane.daemon",
            quit:      "glass.kagerou.sevoflurane"

  zap trash: [
    "~/Library/Application Scripts/glass.kagerou.sevoflurane.thumbnail",
    "~/Library/Application Support/Sevoflurane",
    "~/Library/Application Support/sevoflurane-*",
    "~/Library/Caches/glass.kagerou.sevoflurane",
    "~/Library/Caches/Sevoflurane",
    "~/Library/Caches/sevoflurane-*",
    "~/Library/Caches/SevofluraneDaemon",
    "~/Library/Containers/glass.kagerou.sevoflurane.thumbnail",
    "~/Library/HTTPStorages/glass.kagerou.sevoflurane",
    "~/Library/HTTPStorages/glass.kagerou.sevoflurane.binarycookies",
    "~/Library/HTTPStorages/SevofluraneDaemon",
    "~/Library/Logs/Sevoflurane*",
    "~/Library/Preferences/glass.kagerou.sevoflurane.game.*.plist",
    "~/Library/Preferences/glass.kagerou.sevoflurane.plist",
    "~/Library/Preferences/glass.kagerou.sevoflurane.shared.plist",
    "~/Library/WebKit/glass.kagerou.sevoflurane",
  ]

  caveats <<~EOS
    Windows games run under Rosetta 2. Sevoflurane installs it during setup
    when it is missing.

    Zapping removes the Steam installation Sevoflurane manages, with its
    installed games and any saves that are not in Steam Cloud.
  EOS
end
