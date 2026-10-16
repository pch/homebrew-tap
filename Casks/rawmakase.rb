cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.3.3"
  sha256 arm:   "800ce665581bf74e07807eeafe5c8b1b86b299cafc2e26caee3136b2c162df5e",
         intel: "6da9c3b772e30b0ded12c428f95d04429fcca3ba54424704a1545a0fcdfc947b"

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
