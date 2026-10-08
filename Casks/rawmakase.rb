cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.2"
  sha256 arm:   "b27859f159263043416249de9f74acad9f7c59e5a6febb134b21f857ff8eadb5",
         intel: "655d9c9dae6eed90a0db17ac5904c45fc576006f4bb70565801c03dc88b61cb9"

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
