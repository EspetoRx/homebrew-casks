cask "carteiro" do
  version "1.4.1"

  on_arm do
    url "https://github.com/EspetoRx/carteiro_releases/releases/download/app-v#{version}/Carteiro_#{version}_aarch64.dmg"
    sha256 "fd3a104496fda984e68891eb52abbe5989a253224e8c851d4f96001caddb9be8"
  end

  on_intel do
    url "https://github.com/EspetoRx/carteiro_releases/releases/download/app-v#{version}/Carteiro_#{version}_x64.dmg"
    sha256 "d83739f552c7c9ba1db67d7879106b494f529c096adec776617cb39f59cf5f73"
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
