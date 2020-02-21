class Csvdiff < Formula
  desc "A Blazingly fast diff tool for comparing csv files"
  homepage "https://github.com/aswinkarthik/csvdiff"
  sha256 "cf9804ae5006cba3ae4ecff218f57e3d136f06d9614fd466189eacd8068d6e6a"
  version "1.4.0"
  url "https://github.com/aswinkarthik/csvdiff/archive/v#{version}.tar.gz"

  depends_on "go" => :build

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
