class behinder < Formula
    desc 'Behinder is a cross-platform web shell management tool.'
    homepage 'https://github.com/rebeyond/Behinder'
    url 'https://github.com/rebeyond/Behinder/releases/download/Behinder_v4.1%E3%80%90t00ls%E4%B8%93%E7%89%88%E3%80%91/Behinder_v4.1.t00ls.zip'
    version '4.1'
    sha256 '1e960d4c1c00fa308fe9da6bfb20764a379cb8cf4b874f2456d19982e6c688c2'

    def install
        system 'unzip', '-o', 'Behinder_v#{version}.t00ls.zip'
        libexec.install Dir['*']
        bin.write_jar_script libexec/'behinder.jar', 'behinder'
    end
end
