class fofaex < Formula
    desc 'FOFA EX is a comprehensive red team exploitation tool implemented based on the FOFA API.'
    homepage 'https://github.com/10cks/fofaEX'
    url 'https://github.com/10cks/fofaEX/releases/download/3.3/fofaEX_jar.zip'
    version '3.3'
    sha256 'f37873ccd8500db12a77fef612bf01d47091eca80b4d43b09e9c12f391fe2a1a'

    def install
        libexec.install Dir['*']
        bin.write_jar_script libexec/'fofaEX.jar', 'fofaex'
    end

end