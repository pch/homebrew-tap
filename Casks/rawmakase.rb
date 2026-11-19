cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.0"
  sha256 arm:   "d119aacdb08526c528620f77b1110e308a17952e4b5515ddfeb97cb9c9b89ddf",
         intel: "b0114bb49cd0a4b5d9ae7e58f4a9fa0fdbc72bc84d4428d73034c8b4e06e6651"

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
