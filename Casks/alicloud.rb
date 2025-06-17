cask 'alicloud' do
    version '0.0.1'

    on_intel do
        sha256 'b5055e9aa6a6af289a0f2fba0d00eaf163e3a303adce35b12d07225b4712f11d'
        url "https://github.com/smallsun107/binary/releases/download/v0.0.1/alibaba-cloud-client-latest_x64.dmg"
    end

    on_arm do
        sha256 '7ddc302db0acbb988f104b03e39c904bfb820a4202eb0f0e2a222cb0a2428f08'
        url "https://github.com/smallsun107/binary/releases/download/v0.0.1/alibaba-cloud-client-latest_arm.dmg"
    end

    name 'Alibaba Cloud Client'
    desc 'Alibaba Cloud Client is a tool for managing Alibaba Cloud services'
    homepage 'https://www.aliyun.com/'

    app 'Alibaba Cloud Client.app'

end
