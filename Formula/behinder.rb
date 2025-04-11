class Behinder < Formula
    desc 'Behinder is a cross-platform web shell management tool.'
    homepage 'https://github.com/rebeyond/Behinder'
    url 'https://github.com/smallsun107/binary/releases/download/v4.1/Behinder_v4.1.t00ls.zip'
    version '4.1'
    sha256 '642d4a3930d08a3b54828c661eab62021505938bc5c21b2af04d10218b2de5d7'

    def install
        ENV["LANG"] = "en_US.UTF-8"  # 解决 unzip 非 UTF-8 文件名报错问题
        libexec.install Dir['*']
        (bin/"behinder").write <<~EOS
            #!/bin/bash
            exec java -jar "#{libexec}/Behinder.jar" "$@"
        EOS
        chmod 0755, bin/"behinder"
    end
end
