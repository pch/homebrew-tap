cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.11"
  sha256 arm:   "5edcf222332200899ebb026aa77e895b1a8e72f44475c827041776c35515b9de",
         intel: "e09f041ca7cdc9180a751a5b273c4745052d4223a24c0bda9689df44984070a0"

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
