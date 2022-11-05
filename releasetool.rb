class Releasetool < Formula
  desc ""
  homepage "https://github.com/deweysasser/releasetool"
  version "v0.1"

  on_macos do

    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.1/releasetool-darwin-amd64.zip"
      sha256 "408981049779d2b4c8e12999320d28a8bfbb10973f97432fe3291216be81caa6"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.1/releasetool-darwin-arm64.zip"
      sha256 "bd88557c875e87c45e54466a27bda519d18562023a3486671ef003ebf60c1cfd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.1/releasetool-linux-amd64.zip"
      sha256 "ba2a6729b33a053abd6f56f323fe507c600a44bf42063aae365aeb50dfb9f06b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.1/releasetool-linux-arm64.zip"
      sha256 "129c3b430b2b088359772f8131c3a879bed782fdc4c59a36957485f07e7041d8"
    end
  end


  def install
    bin.install "releasetool"
  end
end