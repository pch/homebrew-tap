cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.2"
  sha256 arm:   "36ff403ac88732d5ad1565c7b522249a409fdf2fb3f160c819eab4289a244703",
         intel: "11b6a2817a0aaf40c9ab09db9e53f626aadbaa8092a893a6337281fc62945a31"

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
