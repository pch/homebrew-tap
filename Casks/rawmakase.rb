cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.0"
  sha256 arm:   "d40a66cd39b6b5b0085a361fc72203c7b86f8af3aed8782a03f03ccf8a474e69",
         intel: "fe66d974ed47240825e6d06aee13ab77347d929b5318a41807c8a812b588e3cf"

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
