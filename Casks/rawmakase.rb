cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.9"
  sha256 arm:   "74ee37efb950e91480df50f35fb0bf756bd06a65e7ee5beb3aa5c61aeb1ee407",
         intel: "85bd0c9213e8a55d674dbd600dca07c695b696294054a90bec1666b50978c641"

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
