cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.14"
  sha256 arm:   "1f82cec90e90da090f7b0bd5a94d03e839ef0b658dd46b3bad198beb52f6e291",
         intel: "d5d34259a9bdad87d9a91fdf813b43efe857c75a8da71a6bca230f2916498798"

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
