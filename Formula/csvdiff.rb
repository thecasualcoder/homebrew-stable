class Csvdiff < Formula
  desc "A Blazingly fast diff tool for comparing csv files"
  homepage "https://github.com/aswinkarthik/csvdiff"
  sha256 "7363c4062a7569a85179b2e74aa7e6e1917e18bc984aa7b19ec1add2c83129fd"
  version "1.2.0"
  url "https://github.com/aswinkarthik/csvdiff/archive/v#{version}.tar.gz"

  depends_on "go" => :recommended

  def install
    system "go",
      "build",
      "-ldflags",
      "-s -w -X main.version=v#{version}",
      "-o",
      "csvdiff",
      "main.go"

    bin.install "csvdiff"
  end
  test do
    assert_match "USAGE:", shell_output("#{bin}/csvdiff -h", 0)
  end
end
