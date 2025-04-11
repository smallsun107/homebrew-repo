class Godzillaekp < Formula
    desc 'Godzilla is a cross-platform web shell management tool.'
    homepage 'https://github.com/ekkoo-z/Z-Godzilla_ekp'
    url 'https://github.com/ekkoo-z/Z-Godzilla_ekp/releases/download/V1.1-Godzilla_ekp/Godzilla_ekp1.1.jar'
    version '1.1'
    sha256 '3b4652226c5fee963ce29edde5a82add6bd2b074bec4a9c9f3b40c94bd0e35e1'

    def install
        libexec.install Dir['*']
        bin.write_jar_script libexec/'Godzilla_ekp1.1.jar', 'godzilla_ekp'
    end
end