class olympus < Formula
  desc ""
  homepage "https://github.com/deweysasser/olympus"
  version "v0.2.2"

  on_macos do

    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/olympus/releases/download/v0.2.2/olympus-darwin-amd64"
      sha256 "fc2eaacf297ac6c9c3249b87a72bc692e555e42215599366fe4fb4584b0ebc6e"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/olympus/releases/download/v0.2.2/olympus-darwin-arm64"
      sha256 "419659131ebbda2cac567aa7a9d7db8d6bf10488159c07c2d1c665d47a22ffd9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/olympus/releases/download/v0.2.2/olympus-linux-amd64"
      sha256 "a5395c7f0e31425f574142ae0ef0370e73aeb4f9024c2a884ca87ed1da72c662"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/olympus/releases/download/v0.2.2/olympus-linux-arm64"
      sha256 "de726b4204dec600dfa00dfd4fc0d0c7a4b944a603b7742d66d19d230e9d8f43"
    end
  end


  def install
    bin.install "olympus"
  end
end