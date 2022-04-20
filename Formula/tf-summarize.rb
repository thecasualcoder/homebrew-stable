class TfSummarize < Formula
  desc "A command-line utility to print the summary of the terraform plan"
  homepage "https://github.com/dineshba/tf-summarize"
  license "The MIT License (MIT)"
  version "0.2.0"
  url "https://github.com/dineshba/tf-summarize.git", :tag => "v#{version}"
  sha256 "6bfdc87aba1325831d8ae4d8c7d998723d401450fdc5a7b710ae6ca2ce1026c6"

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