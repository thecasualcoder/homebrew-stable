class Gg < Formula
  desc "A tool to manage multiple git repositories"
  homepage "https://github.com/thecasualcoder/gg"
  url "https://github.com/thecasualcoder/gg/releases/download/0.1.0/gg-0.1.0-x86_64-darwin.tar.gz"
  sha256 "1c358814a76ce0b4ecfd67a1e4487b706299592b756c35603860aba6722650c9"
  version "0.1.0"
  def install
    bin.install "gg"
  end
  test do
    assert_match "Git Governance 1.0", shell_output("#{bin}/gg --version")
  end
end
