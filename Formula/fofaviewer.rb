class Fofaviewer < Formula
    desc 'Fofa Viewer is a user-friendly FOFA client written in JavaFX, attributed to the WgpSec Community and primarily maintained by f1ashine. By leveraging the powerful internet search engine FoFa, it encapsulates many commonly used APIs into a concise UI, making it easier for cybersecurity professionals to hunt for vulnerabilities on target websites. With its out-of-the-box functionality, Fofa Viewer streamlines the search process, helping penetration testers quickly obtain the information they need.'
    homepage 'https://github.com/wgpsec/fofa_viewer'
    url 'https://github.com/wgpsec/fofa_viewer/releases/download/1.1.15/FofaViewer_1.1.15.zip'
    version '1.1.15'
    sha256 '2288e2c62f1f060e2d89b75c8a9eb707304284b22b699a0268951ba4d47e039b'

    def install
        libexec.install Dir["*"]
        (bin/"fofaviewer").write <<~EOS
            #!/bin/bash
            FX_PATH="javafx-sdk-17.0.14/lib"
            cd "#{libexec}"
            exec java --module-path "$FX_PATH" \\
                --add-modules javafx.controls,javafx.fxml,javafx.web \\
                -jar "fofaviewer.jar" "$@"
        EOS
        chmod 0755, bin/"fofaviewer"
    end
end
