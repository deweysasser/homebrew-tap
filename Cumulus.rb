class Cumulus < Formula
  desc "Bulk access to multiple AWS clouds"
  homepage "https://github.com/deweysasser/cumulus"
  version "v0.2.2"

  on_macos do

    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/cumulus/releases/download/v0.2.2/cumulus-darwin-amd64.zip"
      sha256 "9ca314c2366fa199402324ff9b8b6276213f67ea9a6c7ca625b8ddb04f726d76"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/cumulus/releases/download/v0.2.2/cumulus-darwin-arm64.zip"
      sha256 "71dd80fbce3c708f44fea6513a9c1353ebc7a7d666bce4137edfa14b043298f5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/cumulus/releases/download/v0.2.2/cumulus-linux-amd64.zip"
      sha256 "5387c81795142de68a2f81b3282a488a76ec1619157b2ca5a50a1fca8121e061"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/cumulus/releases/download/v0.2.2/cumulus-linux-arm64.zip"
      sha256 "53d0bd49cc05f69888c10c083d38e6f6443efebdfe3ce63596109e1cd1e2547d"
    end
  end


  def install
    bin.install "cumulus"
  end
end