class CumulusAT021 < Formula
  desc "Bulk access to multiple AWS clouds"
  homepage "https://github.com/deweysasser/cumulus"
  version "v0.2.1"

  on_macos do

    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/cumulus/releases/download/v0.2.1/cumulus-darwin-amd64.zip"
      sha256 "19587f7422d421bcaf14942a610cb196acc6615b60887332aec252babf08213a"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/cumulus/releases/download/v0.2.1/cumulus-darwin-arm64.zip"
      sha256 "fbb735ac08d1ae17ba008162a33ce2c26dabdea7913d57fa263772c9243a1256"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/cumulus/releases/download/v0.2.1/cumulus-linux-amd64.zip"
      sha256 "a2d6385fcdc29d5f830c8ae79a83256d9ff611e5ba993d168183fb89209936b7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/cumulus/releases/download/v0.2.1/cumulus-linux-arm64.zip"
      sha256 "6d2ca0f16275dfdcec5f8089f429c960b0e7e4e7bece2f62b3a660c1f0f9e154"
    end
  end


  def install
    bin.install "cumulus"
  end
end