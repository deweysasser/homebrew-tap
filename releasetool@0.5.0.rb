class ReleasetoolAT050 < Formula
  desc "A tool for making homebrew (and eventually other) releases, like this one"
  homepage "https://github.com/deweysasser/releasetool"
  version "v0.5.0"

  on_macos do

    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.5.0/releasetool-darwin-amd64.zip"
      sha256 "62be7481d1a45e795537dc53520950ac4b6dba7ea7ee2588d92f97718734526c"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.5.0/releasetool-darwin-arm64.zip"
      sha256 "bfb052963a36da15dd423a44368941ea20171ee38aca8aa7d6446e15c75481d5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.5.0/releasetool-linux-amd64.zip"
      sha256 "209b89cfd0b7232b43d843fe919d1ebe40ffe572f92a726daf2e35f49b3211e3"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/releasetool/releases/download/v0.5.0/releasetool-linux-arm64.zip"
      sha256 "a28c8419828de36dd78693918407d76e4616993d4b7fe356499842de7b6ed3d5"
    end
  end


  def install
    bin.install "releasetool"
  end
end