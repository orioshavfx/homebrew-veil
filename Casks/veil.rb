cask "veil" do
  version "1.0.0-beta.1"
  sha256 "109fe1e7b5ff62c3e3dd4814d0eb63b825c0073024154edb85c8c962f3956bb4"

  url "https://github.com/orioshavfx/Veil/releases/download/v#{version}/Veil.zip"
  name "Veil"
  desc "VPN client with rule-based routing"
  homepage "https://github.com/orioshavfx/Veil"

  # Veil updates itself from GitHub releases; `brew upgrade` skips it.
  auto_updates true
  depends_on arch: :arm64

  app "Veil.app"

  # The privileged helper is installed by the app itself (admin password prompt).
  uninstall launchctl: "dev.veil.helper",
            delete:    [
              "/Library/PrivilegedHelperTools/dev.veil.helper",
              "/Library/LaunchDaemons/dev.veil.helper.plist",
            ]

  zap trash: [
    "~/Library/Application Support/dev.veil.veil",
    "~/Library/Logs/Veil",
  ]
end
