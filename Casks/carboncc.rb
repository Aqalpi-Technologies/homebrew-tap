cask "carboncc" do
  version "1.1.0"
  sha256 "5aa79658f2a51e81dd59bca02e119f404ecec57e89434d6a7bf293f98154631e"

  url "https://github.com/Aqalpi-Technologies/carboncc/releases/download/v#{version}/CarbonCC-#{version}.zip"
  name "CarbonCC"
  desc "Clipboard history manager for the menu bar"
  homepage "https://github.com/Aqalpi-Technologies/carboncc"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "CarbonCC.app"

  uninstall quit: "com.aqalpi.carboncc"

  zap trash: [
    "~/Library/Application Support/CarbonCC",
    "~/Library/Preferences/com.aqalpi.carboncc.plist",
  ]
end
