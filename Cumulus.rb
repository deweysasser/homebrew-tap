class Cumulus < Formula
  desc "Bulk access to multiple AWS clouds"
  homepage "https://github.com/deweysasser/cumulus"
  version "v0.3.3"

  on_macos do

    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/cumulus/releases/download/v0.3.3/cumulus-darwin-amd64.zip"
      sha256 "910dc606a1ca67194f083dc8643260f69a493dfbe2f7a9f74303532bc815d9ea"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/cumulus/releases/download/v0.3.3/cumulus-darwin-arm64.zip"
      sha256 "c0a4624ea55f28a1b3e5302efaa2ebee52ca6f85fd9d36c6b34522f10606daa5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/cumulus/releases/download/v0.3.3/cumulus-linux-amd64.zip"
      sha256 "fb16bf910cdd586912529865216ed43c30fb060055c7915758532121236e16ce"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/cumulus/releases/download/v0.3.3/cumulus-linux-arm64.zip"
      sha256 "bd5aaba255c7cc86e29b8b3b7aa598d41f4bbe7cce949c895955b86a9d6b63f1"
    end
  end


  def install
    bin.install "cumulus"
  end
end