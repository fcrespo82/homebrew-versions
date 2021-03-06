cask 'firefox-esr-uk' do
  version '38.6.1'
  sha256 '173982d204a2db1a383d8e64ab6c0f074a97ffe318085dfbccd13f701a154838'

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/uk/Firefox%20#{version}esr.dmg"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/uk/firefox/organizations/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
