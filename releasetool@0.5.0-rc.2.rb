class ReleasetoolAT050Rc2 < Formula
  desc "A tool for making homebrew (and eventually other) releases, like this one"
  homepage "https://github.com/deweysasser/releasetool"
  version "v0.5.0-rc.2"

  on_macos do

    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.5.0-rc.2/releasetool-darwin-amd64.zip"
      sha256 "bef4cf605dcb321f8fc0ba9f7f5fa520df4d6f074e1bc7c8c10b3496e8c8fbef"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.5.0-rc.2/releasetool-darwin-arm64.zip"
      sha256 "b1909e73a49a679cff9f3a399dda1bd0bf7724b98a12a8a4887aca5b42448756"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.5.0-rc.2/releasetool-linux-amd64.zip"
      sha256 "b1174c96d41b65fcbd82a94b2feed33e59891c699cabb495205693ffb879c880"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.5.0-rc.2/releasetool-linux-arm64.zip"
      sha256 "0f9df568d4150c359de02ac0b20a84ea9a4c2e6c400eb14c901dc7aaca1a98aa"
    end
  end


  def install
    bin.install "releasetool"
  end
end