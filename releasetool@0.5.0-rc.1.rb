class ReleasetoolAT050rc1 < Formula
  desc "A tool for making homebrew (and eventually other) releases, like this one"
  homepage "https://github.com/deweysasser/releasetool"
  version "v0.5.0-rc.1"

  on_macos do

    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.5.0-rc.1/releasetool-darwin-amd64.zip"
      sha256 "c648989d58a0649c3f99a1b61fd76c43286d079b8d51faca65b5766682be59ea"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.5.0-rc.1/releasetool-darwin-arm64.zip"
      sha256 "9aea172521203431a018e04280e7c13b2b67bcadfeb93a04181e713034aeca5f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.5.0-rc.1/releasetool-linux-amd64.zip"
      sha256 "f9a21e0cd573935484a6a040bbeabde63c5e7eb094ca0df05d1049dc4a867f82"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.5.0-rc.1/releasetool-linux-arm64.zip"
      sha256 "511ed8013f683f99b19f91bd68a7a8c6e5e9b7dae5fe5d02ea479deb5393b024"
    end
  end


  def install
    bin.install "releasetool"
  end
end