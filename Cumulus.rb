class Cumulus < Formula
  desc "Bulk access to multiple AWS clouds"
  homepage "https://github.com/deweysasser/cumulus"
  version "v0.4.0"

  on_macos do

    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/cumulus/releases/download/v0.4.0/cumulus-darwin-amd64.zip"
      sha256 "96c488e3bee935f224a874f855f35cff6900e177c527cbadacece06c78a34557"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/cumulus/releases/download/v0.4.0/cumulus-darwin-arm64.zip"
      sha256 "0a713a81ffc85a1c30ac5c0d26548c233275d9e3070b79c90db60b3ac5761123"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/cumulus/releases/download/v0.4.0/cumulus-linux-amd64.zip"
      sha256 "04192ffcaeaf6e6a56035c2e30652cdbfc252bfc0cd5dbd652c83b14ba48e914"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/cumulus/releases/download/v0.4.0/cumulus-linux-arm64.zip"
      sha256 "89777045778e0de224210f9d5aa142710472d6be630cb28e9db03d97dcda2830"
    end
  end


  def install
    bin.install "cumulus"
  end
end