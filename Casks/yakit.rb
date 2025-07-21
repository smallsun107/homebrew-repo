cask 'yakit' do
    version 'v1.4.3-0718'

    on_intel do
        sha256 'dcada9021de6cb103de1b63a61de98dc8a34e21b70ba5a9216578adb7957b473'
        url "https://github.com/yaklang/yakit/releases/download/v1.4.3-0718/Yakit-1.4.3-0718-darwin-x64.dmg"
    end

    on_arm do
        sha256 'f6461103283f0a322a84136212a4e71c543bf9a4bbcb089f7cd8e4e598fe5175'
        url "https://github.com/yaklang/yakit/releases/download/v1.4.3-0718/Yakit-1.4.3-0718-darwin-arm64.dmg"
    end

    name 'Yakit'
    desc 'Cyber Security ALL-IN-ONE Platform'
    homepage 'https://yaklang.com/'

    app 'Yakit.app'

end
