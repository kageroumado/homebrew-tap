# kageroumado's Homebrew tap

Casks for my macOS apps. Everything here is free, open source, Developer-ID signed, and notarized — each cask points at the DMG published on the corresponding GitHub release.

## Install

```sh
brew install --cask kageroumado/tap/phosphene
```

That's all — installing by fully qualified name automatically trusts that one cask (Homebrew 6's tap-trust system gates third-party code behind an explicit grant; the qualified name *is* the grant). To trust the whole tap once and use short names for everything in it:

```sh
brew tap kageroumado/tap
brew trust kageroumado/tap
brew install --cask phosphene
```

This tap is deliberately cheap to audit: every file in it is a plain declarative cask — version, checksum, download URL, app bundle. No custom Ruby, no scripts, no external commands.

## Apps

| Cask | App | What it does |
|---|---|---|
| `phosphene` | Phosphene | Use any video as your macOS desktop and lock screen wallpaper — your videos appear directly in System Settings → Wallpaper |
| `coluracetam` | Coluracetam | Markdown reader with instant rendering in-app and in Finder's Quick Look |
| `dantrolene` | Dantrolene | Menu bar utility that prevents screen lock while on trusted Wi-Fi networks |
| `rilmazafone` | Rilmazafone | Visual designer and builder for DMG disk images |
| `adrafinil` | Adrafinil | Keeps the Mac awake while AI coding agents are working |
| `carbidopa` | Carbidopa | Menu bar proxy exposing GitHub Copilot as Anthropic- and OpenAI-compatible APIs |

Landing pages and more at [kagerou.glass](https://kagerou.glass).

## License

The casks in this repository are MIT. Each app carries its own license (also MIT).
