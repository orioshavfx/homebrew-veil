# homebrew-veil

Homebrew tap for [Veil](https://github.com/orioshavfx/Veil) (macOS, Apple Silicon).

```sh
brew install --cask orioshavfx/veil/veil
```

Installing by the full name above trusts just this cask. To trust the whole tap
(so you can use the short name `veil`):

```sh
brew trust orioshavfx/veil
```

Veil is not signed with an Apple Developer ID yet, so macOS shows a warning at the first launch:
right-click the app, choose **Open**, confirm. Veil then updates itself from the app
(Settings → Updates); `brew upgrade` does not touch it.

Uninstall: `brew uninstall --cask veil` (also removes the privileged helper; asks for the admin
password). `brew uninstall --zap --cask veil` also removes settings and logs.
