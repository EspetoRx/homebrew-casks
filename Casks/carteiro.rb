cask "carteiro" do
  version "1.0.1"

  if Hardware::CPU.intel?
    url "https://github.com/EspetoRx/carteiro_releases/releases/download/app-v1.0.1/Carteiro_1.0.1_x64.dmg"
    sha256 "5caa776b601ac9dda5bffaa18ccbcdcbfa57740f5724b03cccfe61c0bc15ec66"
  else
    url "https://github.com/EspetoRx/carteiro_releases/releases/download/app-v1.0.1/Carteiro_1.0.1_aarch64.dmg"
    sha256 "2b2c5632b6bdf6e4aa3034bc591adabeb460ce2643c947b88266d8debc423663"
  end

  name "Carteiro"
  desc "API Tester feito com Tauri + Vue 3"
  homepage "https://github.com/EspetoRx/carteiro_releases"

  app "Carteiro.app"

  zap trash: [
    "~/Library/Application Support/com.carteiro.app",
    "~/Library/Caches/com.carteiro.app",
    "~/Library/Preferences/com.carteiro.app.plist",
    "~/Library/Saved Application State/com.carteiro.app.savedState"
  ]
end
