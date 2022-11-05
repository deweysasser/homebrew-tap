class Olympus < Formula
  desc "Terraform and GitOps"
  homepage "https://github.com/deweysasser/olympus"
  version "v0.2.3"

  on_macos do

    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/olympus/releases/download/v0.2.3/olympus-darwin-amd64.zip"
      sha256 "41a1c3eaca5f9e590bcf25a59df347aa42c2dd0e90ab85cbd43d082dac72f44b"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/olympus/releases/download/v0.2.3/olympus-darwin-arm64.zip"
      sha256 "c999ba895e07f66595a728863cd44f91025f351d7ff4513b45ff4657ca3884a7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/olympus/releases/download/v0.2.3/olympus-linux-amd64.zip"
      sha256 "630c0447a64332821d32506a2add916124166a417157cb9f80d8f57a601e54e7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/olympus/releases/download/v0.2.3/olympus-linux-arm64.zip"
      sha256 "004fc36f85d1941ef0395f650ea31328c7b9d12e05c960b6fb19f08cf74405ac"
    end
  end


  def install
    bin.install "olympus"
  end
end