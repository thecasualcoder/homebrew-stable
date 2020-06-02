class KubeFzf < Formula
  desc "Fuzzy search over Kubernetes Pods from the command-line"
  homepage "https://github.com/thecasualcoder/kube-fzf"
  url "https://github.com/thecasualcoder/kube-fzf/archive/v1.6.2.tar.gz"
  sha256 "3722689339cf19fafeb46ae333a0b7c9e6d0e4eede0d8ab8c232eff899502c68"
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
