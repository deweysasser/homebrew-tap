class EksKubeconfigUpdate < Formula
  desc "Update kubeconfig for all clusters reachable from all AWS profiles"
  homepage "https://github.com/deweysasser/eks-kubeconfig-update"
  version "v0.3.1"

  on_macos do

    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/eks-kubeconfig-update/releases/download/v0.3.1/eks-kubeconfig-update-darwin-amd64.zip"
      sha256 "9d2ab5a45d2a516c0be1d535857954656f4af399e1bde5d19eddad3610243fe9"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/eks-kubeconfig-update/releases/download/v0.3.1/eks-kubeconfig-update-darwin-arm64.zip"
      sha256 "d8855ff5abc8183eb3a1e709042cdda0a648624b59c3ab40713bb58d64e17afd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/deweysasser/eks-kubeconfig-update/releases/download/v0.3.1/eks-kubeconfig-update-linux-amd64.zip"
      sha256 "562524866a1ab21b21e02ee0331b50665bc1ae7298aba6096224127c35d44903"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deweysasser/eks-kubeconfig-update/releases/download/v0.3.1/eks-kubeconfig-update-linux-arm64.zip"
      sha256 "9de9aa0182dbc48de216fbdcf42ffec4f150d974b2ef343df94bf6e4f4f0f3b7"
    end
  end


  def install
    bin.install "eks-kubeconfig-update"
  end
end