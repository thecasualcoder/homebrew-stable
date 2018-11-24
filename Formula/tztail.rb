class Tztail < Formula
    desc "tail with timezones"
    homepage "https://github.com/thecasualcoder/tztail"
    url "https://github.com/thecasualcoder/tztail/releases/download/1.1.1/tztail-1.1.1-x86_64-darwin.tar.gz"
    sha256 "656aef0b1bb7a6646cdcf1367710559a0fa713d7ae5559545e92dc339a9a69fa"
    version "1.1.1"
    version_scheme 1
    def install
      bin.install "tztail"
    end
    test do
      assert_match "USAGE:", shell_output("#{bin}/tztail -h", 1)
    end
  end
