class Gg < Formula
  desc "A tool to manage multiple git repositories"
  homepage "https://github.com/thecasualcoder/gg"
  url "https://github.com/thecasualcoder/gg/releases/download/0.3.0/gg-0.3.0-x86_64-darwin.tar.gz"
  sha256 "b6ecbe3afb58f51b9127d3cf0ce3e74c283173f2f2c9691aa97ff444fdc03c0b"
  version "0.3.0"
  def install
    bin.install "gg"
  end
  test do
    assert_match "Git Governance 0.2.1", shell_output("#{bin}/gg --version")
  end
end
