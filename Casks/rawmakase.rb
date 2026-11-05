cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.12"
  sha256 arm:   "65f9cbe38b58240205b22f3773a2b0df8bc541fb8b9b4fcbeb4a0ba24674d171",
         intel: "2c1505fb39f332d3e2f10a9425d5e20779073a0a6aa58fc371157216c5f19099"

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
