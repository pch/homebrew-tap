cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.4"
  sha256 arm:   "cd7a180c4a431e43ae8fe9b7a361cd9d12b7d74f2285301c2fc853b65bda7d75",
         intel: "07cdde81b469126fc56f1ff1969f3189010b2ec1fb1378caaeed7a954421d761"

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
