cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.9"
  sha256 arm:   "d2f05f99dad71101d7d4479e7241fe25cf6572c3b1c7feba6dd0ca6cb0132607",
         intel: "8615cfb8e00e7f5f8fa58cd992a341c090c6bf9929fd7057fee013cc05c5aa29"

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
