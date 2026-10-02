cask "carteiro" do
  version "0.6.0" # Atualize para a versão correspondente que você está lançando
  sha256 "0e1b3aeeeeb117c83bddba0e9b9b6cf3868f9e8e7587a0c0081d82fc5c087a87"

  url "https://github.com/EspetoRx/carteiro_releases/releases/download/app-v#{version}/Carteiro_#{version}_aarch64.dmg"

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
