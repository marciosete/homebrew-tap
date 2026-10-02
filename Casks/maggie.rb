cask "maggie" do
  version "0.5.0"
  sha256 "5b1d19a879ee1f57180d39942e29d6cea15ee77aed12e036ec2bf6dad94e105e"

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
