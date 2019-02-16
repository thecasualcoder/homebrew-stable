class Csvdiff < Formula
  desc "A Blazingly fast diff tool for comparing csv files"
  homepage "https://github.com/aswinkarthik/csvdiff"
  url "https://github.com/aswinkarthik/csvdiff/releases/download/v1.1.0/csvdiff_1.1.0_darwin_amd64.tar.gz"
  sha256 "4a5de1094fb4a4f33c06b81901884b839932103d3012337e3bc4656cd957f8d4"
  version "1.1.0"
  def install
    bin.install "csvdiff"
  end
  test do
    assert_match "USAGE:", shell_output("#{bin}/csvdiff -h", 0)
  end
end
