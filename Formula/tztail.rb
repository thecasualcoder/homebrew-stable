class Tztail < Formula
  desc "tail with timezones"
  homepage "https://github.com/thecasualcoder/tztail"
  url "https://github.com/thecasualcoder/tztail/releases/download/1.2.0/tztail-1.2.0-x86_64-darwin.tar.gz"
  sha256 "44cca47002ecad9f41d3ca113632a50da45e127b0f941fe8c5919a0408d0bd6b"
  version "1.2.0"
  version_scheme 1
  def install
    bin.install "tztail"
  end
  test do
    assert_match "USAGE:", shell_output("#{bin}/tztail -h", 1)
  end
end
