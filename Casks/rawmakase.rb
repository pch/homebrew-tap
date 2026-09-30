cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.10"
  sha256 arm:   "d8d881fa7f4b59399f1e1eb5e3a2767b2f94243c4cc478f9ce0f8acdbf8f68b3",
         intel: "1913d5316bdc13be0cf235fe5b8bde1cae8a447d0992f136782bee7615423712"

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
