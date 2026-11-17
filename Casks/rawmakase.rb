cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.1"
  sha256 arm:   "beb001dfa626e61bc72d62c27ff6ad3e9235181db110c06bc750bad9eee93a9b",
         intel: "cfc64901153db3347b8c98e86f56487d72fc80d268b25e5ce2795cc491cd6ab8"

  url "https://github.com/pch/rawmakase/releases/download/v#{version}/rawmakase-v#{version}-macos-#{arch}.dmg"
  name "RAWmakase"
  desc "Fast, non-destructive RAW photo developer"
  homepage "https://github.com/pch/rawmakase"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "RAWmakase.app"

  zap trash: "~/Library/Application Support/RAWmakase"
end
