class KubeTmuxp < Formula
  desc "Tool to generate tmuxp configs that help to switch between multiple Kubernetes contexts safely"
  homepage "https://github.com/thecasualcoder/kube-tmuxp"
  version "0.2.6"
  url "https://github.com/thecasualcoder/kube-tmuxp/releases/download/v#{version}/kube-tmuxp_#{version}_Darwin_x86_64.tar.gz"
  sha256 "8ef7aa20ec7186f6cc7f7457978ca94f62685eb49a1c892f4b6cb6709bdec815"
  def install
    bin.install "kube-tmuxp"
  end
  test do
    assert_match "USAGE:", shell_output("#{bin}/kube-tmuxp -h", 1)
  end
end
