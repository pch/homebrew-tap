cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.10"
  sha256 arm:   "98d4308bfc51ab85a4457efb9e46d761913996e5baa3b3ffe06049025891e16b",
         intel: "aa10c297f10e7e4023e2d217ab7fbbe41f48b374f24612e911f4abcbe99f363b"

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
