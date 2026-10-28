cask "carboncc" do
  version "1.0.0"
  sha256 "15243c75aafec1994870eae8ffc98b2d71902abb7dc715d87e5a2edc1365217d"

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
