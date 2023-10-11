class Releasetool < Formula
  desc "A tool for making homebrew (and eventually other) releases, like this one"
  homepage "https://github.com/deweysasser/releasetool"
  version "v0.4"

  on_macos do

    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.4/releasetool-darwin-amd64.zip"
      sha256 "74c3b8953eaece3d7218fbb592920c4c18f26f68bf884eab0eefca2b20f9d5d3"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.4/releasetool-darwin-arm64.zip"
      sha256 "15e23efa73192c2c877bb8e9cc2ddad08de87d0895719ae2b89d69d7e00df379"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.4/releasetool-linux-amd64.zip"
      sha256 "6476263db22953dc4f9e83c6fb885896d6b196ae450bca7a9cbac279053b25b2"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.4/releasetool-linux-arm64.zip"
      sha256 "412a8b866b6e5d444e030cd2150f9cb61c4a49f11d36f5f560cc757c08375945"
    end
  end


  def install
    bin.install "releasetool"
  end
end