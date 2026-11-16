cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.0"
  sha256 arm:   "16320ac21a8f4f8578320aa27c166cf3536ad18baa8624238287f5d0ebfd47f0",
         intel: "e146aaf58f796f2c86cb75b03b8a94c996735a2f189959a7ad3ff0d7fe904f25"

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
