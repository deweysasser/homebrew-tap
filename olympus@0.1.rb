class OlympusAT01 < Formula
  desc "Terraform and GitOps"
  homepage "https://github.com/deweysasser/olympus"
  version "v0.1"

  on_macos do

    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/olympus/releases/download/v0.1/olympus-darwin-amd64"
      sha256 "ee0757e56cba248eaaddbd7c57a7b739459ef61fea6725e61066889ea5a71947"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/olympus/releases/download/v0.1/olympus-darwin-arm64"
      sha256 "c3f289412baea8ad75cc3a82de9befdb890c2c082fb14af784e93ff0ae131ae3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/olympus/releases/download/v0.1/olympus-linux-amd64"
      sha256 "ed0705bb22c6eb1d85f40924e06b38516ceb320342837190d346a52520e85fcc"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/olympus/releases/download/v0.1/olympus-linux-arm64"
      sha256 "c598df232322699ffbab5a0cde993df003281d308c6f8e87b17236c01ec96c92"
    end
  end


  def install
    bin.install "olympus"
  end
end