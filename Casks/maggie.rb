cask "maggie" do
  version "0.9.2"
  sha256 "a69636bc328751116d14674c1398911434cffb14dac229bbf14478dc714a9ebb"

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
