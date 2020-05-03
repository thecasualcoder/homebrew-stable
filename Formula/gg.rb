class Gg < Formula
  desc "A tool to manage multiple git repositories"
  homepage "https://github.com/thecasualcoder/gg"
  url "https://github.com/thecasualcoder/gg/releases/download/0.3.2/gg-0.3.2-x86_64-darwin.tar.gz"
  sha256 "ed094bba103c062f695f47ab8f5730f8db18920f349fad856773381b02c8e9e1"
  version "0.3.2"
  def install
    bin.install "gg"
  end
  test do
    assert_match "Git Governance 0.2.1", shell_output("#{bin}/gg --version")
  end
end
