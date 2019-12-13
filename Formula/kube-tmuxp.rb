class KubeTmuxp < Formula
  desc "Tool to generate tmuxp configs that help to switch between multiple Kubernetes contexts safely"
  homepage "https://github.com/thecasualcoder/kube-tmuxp"
  version "0.2.6"
  url "https://github.com/thecasualcoder/kube-tmuxp/releases/download/v#{version}/kube-tmuxp_#{version}_Darwin_x86_64.tar.gz"
  sha256 "dbecc642ea58786eed95ba207063cccb696074cb1b7e80199e83dfe9937c6918"
  def install
    bin.install "kube-tmuxp"
  end
  test do
    assert_match "USAGE:", shell_output("#{bin}/kube-tmuxp -h", 1)
  end
end
