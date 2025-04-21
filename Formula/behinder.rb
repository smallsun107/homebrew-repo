class Behinder < Formula
    desc 'Behinder is a cross-platform web shell management tool.'
    homepage 'https://github.com/rebeyond/Behinder'
    url 'https://github.com/smallsun107/binary/releases/download/v4.1/Behinder_v4.1.t00ls.zip'
    version '4.1'
    sha256 '013e648337d5b3363d2704aaa46a93d5a35e39e44d38f6197d1f55e230c5d064'

    # def install
    #     libexec.install Dir['*']
    #     (bin/"behinder").write <<~EOS
    #         #!/bin/bash
    #         exec java -jar "#{libexec}/Behinder.jar" "$@"
    #     EOS
    #     chmod 0755, bin/"behinder"
    # end
    def install
        libexec.install Dir["*"]
        (bin/"behinder").write <<~EOS
            #!/bin/bash
            FX_PATH="#{libexec}/javafx-sdk-17.0.14/lib"
            exec java \\
            --module-path "$FX_PATH" \\
            --add-modules javafx.controls,javafx.fxml,javafx.web \\
            -jar "#{libexec}/Behinder.jar" "$@"
        EOS
        chmod 0755, bin/"behinder"
    end
end
