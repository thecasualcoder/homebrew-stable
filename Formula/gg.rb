class Gg < Formula
  desc "A tool to manage multiple git repositories"
  homepage "https://github.com/thecasualcoder/gg"
  url "https://github.com/thecasualcoder/gg/releases/download/0.1.1/gg-0.1.1-x86_64-darwin.tar.gz"
  sha256 "b252372ab667897d8c497c8423ab0be0d81fa13cad9c105a61b974c3cbe4b338"
  version "0.1.1"
  def install
    bin.install "gg"
  end
  test do
    assert_match "Git Governance 1.0", shell_output("#{bin}/gg --version")
  end
end
