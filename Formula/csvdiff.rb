class Csvdiff < Formula
  desc "A Blazingly fast diff tool for comparing csv files"
  homepage "https://github.com/aswinkarthik/csvdiff"
  sha256 "f43be419615fbdded509fd27102b9f88e3b14284b5717576949f46af5027ac05"
  version "1.3.0"
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
