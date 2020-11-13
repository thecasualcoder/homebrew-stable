class Stevedore < Formula
  desc "Tool to load the cluster with containers for kubernetes to orchestrate"
  homepage "https://github.com/gojekfarm/stevedore"
  license "Apache-2.0"
  url "https://github.com/gojekfarm/stevedore.git", :branch => "master"
  version "3.1.1"
  sha256 "ceb6a86560937ba1592e2b199e037acfdd07cf39ced34ad66e9a9b773b18e7a8"

  bottle :unneeded

  depends_on "go" => :build

  def install
    system "make", "compile"
    bin.install "out/stevedore"
  end

  test do
    assert_match "Stevedore loads the cluster with containers for kubernetes to orchestrate",
    shell_output("#{bin}/stevedore")

    assert_match "Command failed: required flag(s) \"manifests-path\" not set",
    shell_output("#{bin}/stevedore apply 2>&1", 1)
  end
end