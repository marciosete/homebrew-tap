cask "maggie" do
  version "0.16.0"
  sha256 "a92bb4ddfef461eb342b8c8c3ca153b12f20877d01329ebe65906c2a7ed1c0d8"

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
