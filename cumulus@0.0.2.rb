class CumulusAT002 < Formula
  desc "Bulk access to multiple AWS clouds"
  homepage "https://github.com/deweysasser/cumulus"
  version "v0.0.2"

  on_macos do

    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/cumulus/releases/download/v0.0.2/cumulus-darwin-amd64"
      sha256 "f33d5b7426f51f44fbd4bc8ac0f1c38c53b3142a76470571f9392a4267fa5c5f"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/cumulus/releases/download/v0.0.2/cumulus-darwin-arm64"
      sha256 "7fd346d6f7b5d877f2bb40180add6824e21c432513c0cb6ec825cb9494433242"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/cumulus/releases/download/v0.0.2/cumulus-linux-amd64"
      sha256 "6546d35b258a7279182a2331db72969db157dc14c310f4dddbb340c609c40fce"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/cumulus/releases/download/v0.0.2/cumulus-linux-arm64"
      sha256 "a419c19cfe235462dd4eecfbf55fcba50a7e5c12feab6ee1aa6796bc955f4b40"
    end
  end


  def install
    bin.install "cumulus"
  end
end