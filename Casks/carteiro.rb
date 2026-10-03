cask "carteiro" do
  version "0.8.0"

  if Hardware::CPU.intel?
    url "https://github.com/EspetoRx/carteiro_releases/releases/download/app-v#{version}/Carteiro_#{version}_x64.dmg"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  else
    url "https://github.com/EspetoRx/carteiro_releases/releases/download/app-v#{version}/Carteiro_#{version}_aarch64.dmg"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
