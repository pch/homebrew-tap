cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.0"
  sha256 arm:   "6041b658305e2cf4ff7567b9e9b6818f86e2081f393bac768407d3b9705673b9",
         intel: "70db4a02941a9204d82ed9de154e80726e13280687180d5e138931886edb6cf4"

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
