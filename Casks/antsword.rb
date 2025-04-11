cask 'antsword' do
    version '4.0.3'
    sha256 'c712f02d2071ca06e4697bf378ede905b9ee14dbd67b1958a0fd071e69e056dd'
    url 'https://github.com/AntSwordProject/AntSword-Loader/releases/download/#{version}/AntSword-Loader-v4.0.3-darwin-x64.dmg'
    name 'AntSword'
    desc 'AntSword is a cross-platform web shell management tool'
    homepage 'https://github.com/AntSwordProject'

    app 'AntSword.app'

    zap trash: [
        '~/Library/Application Support/antsword',
        '~/Library/Preferences/com.github.AntSwordProject.plist',
        '~/Library/Saved Application State/com.github.AntSwordProject.savedState',
        '~/Library/Logs/AntSword'
        ]
end
