class KubeFzf < Formula
  desc "Fuzzy search over Kubernetes Pods from the command-line"
  homepage "https://github.com/thecasualcoder/kube-fzf"
  url "https://github.com/thecasualcoder/kube-fzf/archive/v1.6.0.tar.gz"
  sha256 "b2b0ceafc13f58c1ab0cbf0741f5fbf874eff237c51b5e53b01bf3cfe92a802a"
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
