class Releasetool < Formula
  desc "A tool for making homebrew (and eventually other) releases, like this one"
  homepage "https://github.com/deweysasser/releasetool"
  version "v0.3"

  on_macos do

    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.3/releasetool-darwin-amd64.zip"
      sha256 "182a1682e93de98fcf3189cd22a84a5592e6c262befd10f6a8726719a533aff3"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.3/releasetool-darwin-arm64.zip"
      sha256 "318f79225a0b35ebd2905cee1c33059eab891a0e8725e0ae791a2c502baaa046"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.3/releasetool-linux-amd64.zip"
      sha256 "c4c8f8868e333b8982f2a6fef0c738d57cd1797d0ea75cbfab8e80c84ea81014"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.3/releasetool-linux-arm64.zip"
      sha256 "9ae3f0f68c6277854775f7585b0243c7d09f788fe20af6fa7c9ef994b6be49f7"
    end
  end


  def install
    bin.install "releasetool"
  end
end