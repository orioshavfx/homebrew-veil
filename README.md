# homebrew-veil

Homebrew tap for [Veil](https://github.com/orioshavfx/Veil) (macOS, Apple Silicon).

```sh
brew install --cask orioshavfx/veil/veil
```

Recent Homebrew versions ask you to trust third-party taps; if it does:

```sh
brew trust --tap orioshavfx/veil
```

Veil is not signed with an Apple Developer ID yet, so macOS shows a warning at the first launch:
right-click the app, choose **Open**, confirm. Veil then updates itself from the app
(Settings → Updates); `brew upgrade` does not touch it.

Uninstall: `brew uninstall --cask veil` (also removes the privileged helper; asks for the admin
password). `brew uninstall --zap --cask veil` also removes settings and logs.
