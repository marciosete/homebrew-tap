cask "maggie" do
  version "0.22.2"
  sha256 "23f1fe1fdb270a34fbb7ff9c60c7bdf825b501a45cb25ae508b4d74d72efa279"

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
