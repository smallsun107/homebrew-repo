class Ghidra < Formula
  desc "Software reverse engineering framework developed by NSA"
  homepage "https://github.com/NationalSecurityAgency/ghidra"
  version "11.4.2"

  url "https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_11.4.2_build/ghidra_11.4.2_PUBLIC_20250826.zip"
  sha256 "795a02076af16257bd6f3f4736c4fc152ce9ff1f95df35cd47e2adc086e037a6"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"ghidraRun"
  end

  def caveats
    <<~EOS
      Ghidra has been successfully installed!

      To run Ghidra, use:
      ghidraRun

    If you encounter any JAVA startup issues, set the JAVA_HOME environment variable:
      export JAVA_HOME="$(brew --prefix openjdk)/libexec/openjdk.jdk/Contents/Home"
    EOS
  end
end
