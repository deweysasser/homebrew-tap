class EksKubeconfigUpdateAT03 < Formula
  desc "Update kubeconfig for all clusters reachable from all AWS profiles"
  homepage "https://github.com/deweysasser/eks-kubeconfig-update"
  version "v0.3"

  on_macos do

    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/eks-kubeconfig-update/releases/download/v0.3/eks-kubeconfig-update-darwin-amd64"
      sha256 "0f254d9d7728c6a062a33ed787b7219370582229b2aa04ac16c13ca3bdba4bfb"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/eks-kubeconfig-update/releases/download/v0.3/eks-kubeconfig-update-darwin-arm64"
      sha256 "e14ef7932269022490eef14fb169fa25d16671a400bd2c3c878a74eb6356fc1b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/eks-kubeconfig-update/releases/download/v0.3/eks-kubeconfig-update-linux-amd64"
      sha256 "4043a0ba940a9b14fab002d12f5a7a3703eeafb5c3ec911c5648bcb44133e246"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/eks-kubeconfig-update/releases/download/v0.3/eks-kubeconfig-update-linux-arm64"
      sha256 "ef4f1ef9fc09ea931938f518017d5199ce0268214060d875e7ae343404e6e886"
    end
  end


  def install
    bin.install "eks-kubeconfig-update"
  end
end