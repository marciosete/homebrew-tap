cask "maggie" do
  version "0.21.0"
  sha256 "0a3c8c0bdab408c7ad87647592d3603a05ac99d0427d5bd82ca3003158e84032"

  url "https://github.com/marciosete/maggie/releases/download/v#{version}/Maggie.dmg"
  name "Maggie"
  desc "Terminal for a flock of Claude Code sessions, built on Ghostty"
  homepage "https://github.com/marciosete/maggie"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Maggie updates itself from its releases.
  auto_updates true
  depends_on macos: :ventura

  app "Maggie.app"

  zap trash: [
    "~/Library/Application Support/com.marciosete.maggie",
    "~/Library/Caches/Maggie",
    "~/Library/Logs/Maggie",
    "~/Library/Preferences/com.marciosete.maggie.plist",
  ]
end
