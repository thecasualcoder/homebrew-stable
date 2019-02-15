class LazyConnect < Formula
  desc "Shell function to fuzzy search an IPSec VPN by name and connect to it automatically."
  homepage "https://github.com/thecasualcoder/lazy-connect"
  url "https://github.com/thecasualcoder/lazy-connect/archive/v1.5.0.zip"
  sha256 "5bc394efe7dddfe9df9d9d81cd4a738e347912c5ad7eca4a7e70ad8ae822a218"
  depends_on "fzf" => :recommended
  depends_on "oath-toolkit" => :recommended
  def install
    bin.install "lazy-connect"
  end
  test do
    assert_match "USAGE:", shell_output("#{bin}/lazy-connect -h", 1)
  end
end
