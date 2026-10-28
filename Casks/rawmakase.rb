cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.7"
  sha256 arm:   "01fa318e9fbb5d80df836520b324f1475cd6fcc0a33995dc17697136d7cbe3f3",
         intel: "0060783d775fc1dc570a3b2307998c2936d9e8656b31bfbec905d929cd736d2b"

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
