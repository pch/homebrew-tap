cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.0"
  sha256 arm:   "5c8abaa74f1348f8218a89cfa50b15e71a84e15521920b1758d63b493a416b66",
         intel: "910795bc71d5f880b8a3c8ef81a505e0e3a85a0e386083768c1fbc2fe9cdce3a"

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
