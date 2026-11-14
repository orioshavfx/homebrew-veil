cask "veil" do
  version "1.0.0-beta.1"
  sha256 "REPLACE_WITH_SHA256_OF_Veil.zip"

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
