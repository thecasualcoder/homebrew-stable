class TfSummarize < Formula
  desc "A command-line utility to print the summary of the terraform plan"
  homepage "https://github.com/dineshba/tf-summarize"
  license "The MIT License (MIT)"
  version "0.2.2"
  url "https://github.com/dineshba/tf-summarize.git", :tag => "v#{version}"
  sha256 "b7de3f0c1b0504cf58c25758818d0c2604718ce7da0e3204f86024285417e934"
  depends_on "go" => :build

  def install
      ENV['TF_SUMMARIZE_VERSION'] = "#{version}"
      system "make", "build"
      bin.install "tf-summarize"
  end

  test do
    assert_match "Version: #{version}",
    shell_output("#{bin}/tf-summarize -v")
  end
end