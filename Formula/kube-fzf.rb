class KubeFzf < Formula
  desc "Fuzzy search over Kubernetes Pods from the command-line"
  homepage "https://github.com/thecasualcoder/kube-fzf"
  url "https://github.com/thecasualcoder/kube-fzf/archive/v1.6.3.tar.gz"
  sha256 "2e08d5d3fb84522523a8d86ba64582f75bb0154a1f838003983cbd372797455d"
  depends_on "fzf" => :recommended
  def install
    bin.install "kube-fzf.sh"
    bin.install "describepod"
    bin.install "execpod"
    bin.install "findpod"
    bin.install "pfpod"
    bin.install "tailpod"
  end
  test do
    assert_match "USAGE:", shell_output("#{bin}/describepod -h", 1)
    assert_match "USAGE:", shell_output("#{bin}/execpod -h", 1)
    assert_match "USAGE:", shell_output("#{bin}/findpod -h", 1)
    assert_match "USAGE:", shell_output("#{bin}/pfpod -h", 1)
    assert_match "USAGE:", shell_output("#{bin}/tailpod -h", 1)
  end
end
