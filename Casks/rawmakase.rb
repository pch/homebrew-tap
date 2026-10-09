cask "rawmakase" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.3"
  sha256 arm:   "be4442247c3b0463ed260478e7bc5423381e1bfe10614dee093e479f3b78857b",
         intel: "54ef578ee3a3e01576696a5a2da3198658a720025009e47399cd7e783326174f"

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
