cask 'yahoo-keykey' do
  version '1.1.2535'
  sha256 'affa3836cc1737e8a42bdb64d70e141979a1284055c30e27f253b38f54109404'

  url "https://github.com/Yi-Kai/YahooKeyKey/releases/download/v#{version}/YahooKeyKey.zip"
  livecheck do
    url 'https://github.com/Yi-Kai/YahooKeyKey/releases.atom'
  end
  name 'Yahoo! KeyKey Chinese input method engine (IME)'
  homepage 'https://github.com/Yi-Kai/YahooKeyKey'

  pkg 'KeyKey.pkg'

  uninstall signal: [['TERM', 'com.yahoo.inputmethod.KeyKey.InstallerHelp']], pkgutil: 'com.yahoo.inputmethod.keykey'
end
