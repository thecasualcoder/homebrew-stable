class LazyConnect < Formula
  desc "Shell function to fuzzy search an IPSec VPN by name and connect to it automatically."
  homepage "https://github.com/thecasualcoder/lazy-connect"
  url "https://github.com/thecasualcoder/lazy-connect/archive/v1.6.0.zip"
  sha256 "77dfcbca7a605ac32081b03aebaed3a3e3182f65cddaa1204306615b2fc84a8a"
  depends_on "fzf" => :recommended
  depends_on "oath-toolkit" => :recommended
  def install
    bin.install "lazy-connect"
  end
  test do
    assert_match "USAGE:", shell_output("#{bin}/lazy-connect -h", 1)
  end
end
