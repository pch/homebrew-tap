cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.13"
  sha256 arm:   "6103c10679b6a7d9e4c22a0db90f7b0076f32ad233804b68ed4113d030772599",
         intel: "de8b3c794a437d9b3c2757fe206f2691aa8ea21031b5d1f36680d358f5a4adc4"

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
