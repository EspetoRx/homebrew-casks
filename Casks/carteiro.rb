cask "carteiro" do
  version "1.0.0"

  if Hardware::CPU.intel?
    url "https://github.com/EspetoRx/carteiro_releases/releases/download/app-v1.0.0/Carteiro_1.0.0_x64.dmg"
    sha256 "96323f39a86244284f398a55d21ea4244a6da0e7a5bf42585075eeac91e2ae1b"
  else
    url "https://github.com/EspetoRx/carteiro_releases/releases/download/app-v1.0.0/Carteiro_1.0.0_aarch64.dmg"
    sha256 "bb40f7bc923b02819c5bf8985d3a5b153cb7ea6dde42f7c51ab17ee5d838b8fa"
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
