cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.1"
  sha256 arm:   "a7a6c86e0662f8244d184db0209401b112c8f6ef6368b7b7df99d2dcaa6edee7",
         intel: "bf7ecb535e474de08e95f34cb6f94030f2d2e32129a9ad45a660fa2a6991dd2f"

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
