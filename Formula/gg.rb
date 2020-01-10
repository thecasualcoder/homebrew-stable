class Gg < Formula
  desc "A tool to manage multiple git repositories"
  homepage "https://github.com/thecasualcoder/gg"
  url "https://github.com/thecasualcoder/gg/releases/download/0.2.1/gg-0.2.1-x86_64-darwin.tar.gz"
  sha256 "e1bb5231bd198c537c6404a6b18f9f37bcafcda32241c648da915fd3e6a8cd96"
  version "0.2.1"
  def install
    bin.install "gg"
  end
  test do
    assert_match "Git Governance 0.2.1", shell_output("#{bin}/gg --version")
  end
end
