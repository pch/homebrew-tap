cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.4"
  sha256 arm:   "4a099ed1b39e2995c71949b3809e3aa56b2bb3be54a54e24426cbc9465869114",
         intel: "073a4daf04dc15b0039caf86d80a97349329e44687e10b8e2614e57792ba4121"

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
