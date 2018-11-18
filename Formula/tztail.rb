class Tztail < Formula
    desc "tail with timezones"
    homepage "https://github.com/thecasualcoder/tztail"
    url "https://github.com/thecasualcoder/tztail/releases/download/1.1.0/tztail_1.1.0_darwin_amd64.tar.gz"
    sha256 "42df063dd5072aa4ea753e533554c8cff4845c6a2523c46b127e15022752c1cf"
    def install
      bin.install "tztail"
    end
    test do
      assert_match "USAGE:", shell_output("#{bin}/tztail -h", 1)
    end
  end