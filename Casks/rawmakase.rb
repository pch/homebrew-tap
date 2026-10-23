cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.3"
  sha256 arm:   "1defa6647d8aa48a37d9f9a39b5293ffa5964e43ee68d56369034a0004e9ab95",
         intel: "d6e6fa0341056a54cc6e8850896eae23dd1ab32a0e3a6a97f77d499a076db686"

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
