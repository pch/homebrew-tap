cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.11"
  sha256 arm:   "dd7f64035349b7c51edcbe66032649ea011da471a83e8b2250fb38faff3bcb0c",
         intel: "b2e35d6f27da529318a2daccd822c6a1c7de4ccaae6d16aef35f1f79d3d09704"

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
