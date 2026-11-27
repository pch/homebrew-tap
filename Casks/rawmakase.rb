cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.0"
  sha256 arm:   "f592adc24fcd34ae42602757059b057038452c8abdf4bca53ea687cb94212598",
         intel: "6feaafd063e58549da3eab90bd8ec441fe3ca7b31824a8cdb9cf98b5ddfd2219"

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
