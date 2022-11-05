class Cumulus < Formula
  desc "Bulk access to multiple AWS clouds"
  homepage "https://github.com/deweysasser/olympus"
  version "v0.1.0"

  on_macos do
    if Hardware::CPU.intel?
        url "https://github.com/deweysasser/cumulus/releases/download/v0.1.0/cumulus-darwin-amd64.zip"
      sha256 "e3547b4150eed0c2fde1b9f2c80cd083a6888f8138ba4921cd1cd0c496cad6c8"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/cumulus/releases/download/v0.1.0/cumulus-darwin-arm64.zip"
      sha256 "13d4c7b6901c9ae0ded25b74377ca67ec4bafdd1191eee5bd2e6e4f974fca3da"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/cumulus/releases/download/v0.1.0/cumulus-linux-amd64.zip"
      sha256 "75542cbcdae8f9968b072b502b85fd05dcc1a1490e750cd9cf867c43a4f2e13c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/cumulus/releases/download/v0.1.0/cumulus-linux-arm64.zip"
      sha256 "781486b130789ad29699afb67ec95d2164da3530e8aa227ae5378da557a85271"
    end
  end


  def install
    bin.install "cumulus"
  end
end