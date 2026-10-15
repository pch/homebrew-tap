cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.3.2"
  sha256 arm:   "71e6221c6b0cc72fda45c595a5dc55ee290d3d5197d3ad82f51c2e2c72b34aea",
         intel: "7d93e986ab67bb006cf223db5d9b92d2fa5941a7b4d38188bba317abb6bd17f9"

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
