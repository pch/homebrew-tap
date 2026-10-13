cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.3.0"
  sha256 arm:   "8a881ed05f8af1e6e28be0100eccea334648d02d8b3119edc763cd4bcd5d562e",
         intel: "48e384642aff8a061e46fde6032db84a08f824b43720f08f20f1784fec2ed04e"

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
