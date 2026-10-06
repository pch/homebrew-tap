cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.0"
  sha256 arm:   "dee3a68fdad2d8f9765bb3ee3740de7af0678941453de013218b71c0ac3d8779",
         intel: "c5b74caff63c75fd7193e6db1faacc9d8324ee55a0f9b8565291d87eee02524a"

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
