cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.2"
  sha256 arm:   "d6a26e282bdf277231c996d1c5585a19498564b0bd488f8ea28568508071ca58",
         intel: "9ac8edcf010617028dcedf2c6065e5ee9cce0738cf26c325cab878f4eaec43a9"

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
