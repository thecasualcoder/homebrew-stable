class Gg < Formula
  desc "A tool to manage multiple git repositories"
  homepage "https://github.com/thecasualcoder/gg"
  url "https://github.com/thecasualcoder/gg/releases/download/0.3.2/gg-0.3.2-x86_64-darwin.tar.gz"
  sha256 "364b8cf3a4364d04d21687d4e42e663a0bfe1833cba3bcda9613f5981ccaeecf"
  version "0.3.2"
  def install
    bin.install "gg"
  end
  test do
    assert_match "Git Governance 0.3.2", shell_output("#{bin}/gg --version")
  end
end
