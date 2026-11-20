cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.1"
  sha256 arm:   "1680fd2adda6c200b90901affc3257c5e138580a9e1ce614282a0485f48df965",
         intel: "a52a1a6f92c51396f275020319ed250765b92a7e8fef8a5bf8df1239827bb6f0"

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
