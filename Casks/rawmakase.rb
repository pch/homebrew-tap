cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.3.1"
  sha256 arm:   "d6773dd230016f4b03baa53cec3f00edcf7a27b80f785a64b9ca08e76103dd79",
         intel: "5fbdbc02f56aa2b3f7214c8bd580535da21e714ef2e0ed5a984ae75aeb2327c9"

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
