cask "v2rayn" do
    version "7.12.7"

    on_intel do
        sha256 '41e9ef4c6986ba1fdabef99c2baea6fdeb9863a723290eece9d3da3dfd07c5a6'
        url "https://github.com/2dust/v2rayN/releases/download/#{version}/v2rayN-macos-#{arch}.dmg"
    end
    
    on_arm do
        sha256 'dee33c76ce98fee472246bf14cc034c69643244acf0ea5bd1b0d746cab51340c'
        url "https://github.com/2dust/v2rayN/releases/download/#{version}/v2rayN-macos-#{arch}.dmg"
    end

    name "v2rayN"
    desc "代理客户端，支持 Xray、sing-box 等"
    homepage "https://github.com/2dust/v2rayN"

    app "v2rayN.app"

    preflight do
        system_command "xattr",
                    args: ["-cr", "#{staged_path}/v2rayN.app"]
    end

    zap trash: [
        "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/2dust.v2rayN",
        "~/Library/Application Support/v2rayN",
        "~/Library/Preferences/2dust.v2rayN.plist",
    ]
end