class KubeTmuxp < Formula
  desc "Tool to generate tmuxp configs that help to switch between multiple Kubernetes contexts safely"
  homepage "https://github.com/thecasualcoder/kube-tmuxp"
  version "0.2.3"
  url "https://github.com/thecasualcoder/kube-tmuxp/releases/download/v#{version}/kube-tmuxp_#{version}_Darwin_x86_64.tar.gz"
  sha256 "26b16343f6042e70fa165244682d4af1cd86dfff59c1cb5d306079a465c3b6b7"
  def install
    bin.install "kube-tmuxp"
  end
  test do
    assert_match "USAGE:", shell_output("#{bin}/kube-tmuxp -h", 1)
  end
end
