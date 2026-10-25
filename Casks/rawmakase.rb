cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.5"
  sha256 arm:   "7ccd448ea592f4817abf99d14dc71f31c1320b67cc6f556227c4fa6f6d1ef318",
         intel: "a30c4efd62811532ffcbb64d1e69d83924d87efbc2140c421de3a3fef48d194b"

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
