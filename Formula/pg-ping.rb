class PgPing < Formula
    desc "Ping your postgres continously"
    homepage "https://github.com/thecasualcoder/pg-ping"
    version "0.1.0"
    url "https://github.com/thecasualcoder/pg-ping/archive/v#{version}.tar.gz"

    depends_on "go" => :recommended

    def install
        ENV['PGPING_VERSION'] = "v#{version}"
        system "make", "compile"
        bin.install "pg-ping"
    end
end