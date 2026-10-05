cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.15"
  sha256 arm:   "07cd822c8d8f9ecd4c7e966eff0f152010b25ece14a3b6dd883dbb4b223598d7",
         intel: "405a6cc5143352dcc4ffbbfe2edab3467795b848c2c6d55f14720bc05ef548a8"

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
