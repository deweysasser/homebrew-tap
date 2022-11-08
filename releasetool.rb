class Releasetool < Formula
  desc ""
  homepage "https://github.com/deweysasser/releasetool"
  version "v0.2"

  on_macos do

    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.2/releasetool-darwin-amd64.zip"
      sha256 "7002ed526076b85bc1a7f06adc1ecdc7b43dd1ad612a0ab7f829be2961d04603"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.2/releasetool-darwin-arm64.zip"
      sha256 "482c5be5ef666ebffcbbbdcdbf905ca41e446341810c534872a51b0d1087ea82"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.2/releasetool-linux-amd64.zip"
      sha256 "f2f0d19a6442dc3c3056353a3c84a6954c65c8f34c3582231b3126931808e499"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.2/releasetool-linux-arm64.zip"
      sha256 "a88e4e4b3d173da51aa32cb159e2f1250f33abe81ddbc0b611271d34532326e5"
    end
  end


  def install
    bin.install "releasetool"
  end
end