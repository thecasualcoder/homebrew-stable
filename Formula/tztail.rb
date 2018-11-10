class Tztail < Formula
    desc "tail with timezones"
    homepage "https://github.com/thecasualcoder/tztail"
    url "https://github.com/thecasualcoder/tztail/releases/download/1.0.0/tztail_1.0.0_darwin_amd64.tar.gz"
    sha256 "2264175a09f741752493542137947efd296b53a2f93edc330814a754a3679238"
    def install
      bin.install "tztail"
    end
    test do
      assert_match "USAGE:", shell_output("#{bin}/tztail -h", 1)
    end
  end