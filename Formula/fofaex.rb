class Fofaex < Formula
    desc 'FOFA EX is a comprehensive red team exploitation tool implemented based on the FOFA API.'
    homepage 'https://github.com/10cks/fofaEX'
    url 'https://github.com/10cks/fofaEX/releases/download/3.3/fofaEX_jar.zip'
    version '3.3'
    sha256 'f37873ccd8500db12a77fef612bf01d47091eca80b4d43b09e9c12f391fe2a1a'

    def install
        libexec.install Dir['*']
        (bin/"fofaex").write <<~EOS
            #!/bin/bash
            mkdir -p "$HOME/.config/fofaex"
            cd "$HOME/.config/fofaex"
            exec java -jar "#{libexec}/fofaEX.jar" "$@"
        EOS
        chmod 0755, bin/"fofaex"
    end

end