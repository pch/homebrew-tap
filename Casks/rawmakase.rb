cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.8"
  sha256 arm:   "05139c2fa1221b718016bf8817af14700fb6ef2cd83224fe0578c9ecc4caa922",
         intel: "19d8c6a0835804a2fcd0444a662e3a4ec747024fb8910d8cb36a77e7c4acda88"

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
