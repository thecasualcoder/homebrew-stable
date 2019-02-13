class KubeTmuxp < Formula
  desc "Tool to generate tmuxp configs that help to switch between multiple Kubernetes contexts safely"
  homepage "https://github.com/thecasualcoder/kube-tmuxp"
  version "0.2.2"
  url "https://github.com/thecasualcoder/kube-tmuxp/releases/download/v#{version}/kube-tmuxp_#{version}_Darwin_x86_64.tar.gz"
  sha256 "87b40bbf40e87c3f00e84ee0751b2885545541805f15abbd13bfe412225c7ebb"
  def install
    bin.install "kube-tmuxp"
  end
  test do
    assert_match "USAGE:", shell_output("#{bin}/kube-tmuxp -h", 1)
  end
end
