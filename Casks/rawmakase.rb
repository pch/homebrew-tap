cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.1"
  sha256 arm:   "8ca019dd3f74beb65c8437b012295c2b6c9fcc3698c8a767d266dcc96bd0fbe6",
         intel: "39ca165d6e67980e4cddf2ba6880829a955c01ef960cff281f39d2e72f3ed008"

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
