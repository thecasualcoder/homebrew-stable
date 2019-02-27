$version = "v0.13.0"
$bin_name = "stolon"

class Stolon < Formula
    desc "Stolon is a cloud native PostgreSQL manager for high availability"
    homepage "https://github.com/sorintlab/stolon"
    url "https://github.com/sorintlab/#{$bin_name}.git", tag: $version
    version $version

    depends_on "go" => :recommended

    def install
        group_dir = "src/github.com/sorintlab"
        source_dir = "#{group_dir}/#{$bin_name}"
        (buildpath/group_dir).mkpath
        ENV["GOPATH"] = buildpath

        Dir.mktmpdir("#{$bin_name}-tmp-install-") do |dir|
        cp_r buildpath, dir
        tmp_dir = "#{dir}/#{File.basename(buildpath)}"
        mv tmp_dir, buildpath/source_dir
        end

        Dir.chdir buildpath/source_dir do
        system "./build"
        bin.install "./bin/stolon-keeper" => "stolon-keeper"
        bin.install "./bin/stolon-proxy" => "stolon-proxy"
        bin.install "./bin/stolon-sentinel" => "stolon-sentinel"
        bin.install "./bin/stolonctl" => "stolonctl"
        end
    end
end