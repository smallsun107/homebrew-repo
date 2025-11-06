cask 'yakit' do
    version 'v1.4.4-0808'

    on_intel do
        sha256 'b504dbdfb5dcd3b30bb3f7eab1ffbf19d7fad9b13c73671b9252f7df994fb6f5'
        url "https://github.com/yaklang/yakit/releases/download/v1.4.4-0808/Yakit-1.4.4-0808-darwin-x64.dmg"
    end

    on_arm do
        sha256 'cff734753c327943b73576d0a6c968cea736db208b61088be028f1a415625cd4'
        url "https://github.com/yaklang/yakit/releases/download/v1.4.4-0808/Yakit-1.4.4-0808-darwin-arm64.dmg"
    end

    name 'Yakit'
    desc 'Cyber Security ALL-IN-ONE Platform'
    homepage 'https://yaklang.com/'

    app 'Yakit.app'

end
