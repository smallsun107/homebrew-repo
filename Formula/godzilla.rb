class Godzilla < Formula
    desc 'Godzilla is a cross-platform web shell management tool.'
    homepage 'https://github.com/BeichenDream/Godzilla'
    url 'https://github.com/BeichenDream/Godzilla/releases/download/v4.0.1-godzilla/godzilla.jar'
    version '4.0.1'
    sha256 '62b7eff31d339fd04e6d39aba47b5f37b1b6feb27f85c3c71e4d2d600e8142c6'

    # def install
    #     libexec.install Dir['*']
    #     bin.write_jar_script libexec/'godzilla.jar', 'godzilla'
    # end
    def install
        libexec.install "godzilla.jar"
        (bin/"godzilla").write <<~EOS
            #!/bin/bash
            mkdir -p "$HOME/.config/godzilla"
            cd "$HOME/.config/godzilla"
            exec java -jar "#{libexec}/godzilla.jar" "$@"
        EOS
        chmod 0755, bin/"godzilla"
    end
end