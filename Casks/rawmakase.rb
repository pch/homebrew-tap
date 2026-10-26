cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.6"
  sha256 arm:   "d69ecd5c5a64db3418708beb8d766f5bb617038a94c3280971e3fe25823fecd6",
         intel: "d8d02a93bcfbdf90db40d4e8ff86452a5854840a829bc5172f06c34b6f6258ea"

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
