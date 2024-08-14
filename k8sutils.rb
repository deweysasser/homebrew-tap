class K8sutils < Formula
  desc "Utilities to manipulate running kubernetes object"
  homepage "https://github.com/deweysasser/k8sutils"
  version "v0.1"

  on_macos do

    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/k8sutils/releases/download/v0.1/k8sutils-darwin-amd64.zip"
      sha256 "94d49664e872a3244ee11bdc5aee095f7fac800d47e36ce611050db697afd61e"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/k8sutils/releases/download/v0.1/k8sutils-darwin-arm64.zip"
      sha256 "6c1bedb8a3139ae22683e2a6e34a1c19d874d3849e8fbd99647797c9376a7b40"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/k8sutils/releases/download/v0.1/k8sutils-linux-amd64.zip"
      sha256 "460b1cd0c950dcb23db7ba958e312d8fcc8fffc22bfee9243b1bd3ad5fd79432"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/k8sutils/releases/download/v0.1/k8sutils-linux-arm64.zip"
      sha256 "815199ca526f7c3d9c94e8056fefe53eb5634df3ccafb146aae9a73652b89e99"
    end
  end


  def install
    bin.install "k8sutils"
  end
end