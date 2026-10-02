cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.12"
  sha256 arm:   "f6dfd99ad23c7b21c4f575f4196f880c5fa7c6cf58fcbf86ab80f9af1a0a12cd",
         intel: "bb52c9e3c30f8782f411491c84904b813440e0d3ae0f03daf4da7e6df862bc39"

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
