class TfSummarize < Formula
  desc "A command-line utility to print the summary of the terraform plan"
  homepage "https://github.com/dineshba/tf-summarize"
  license "The MIT License (MIT)"
  version "0.3.3"
  url "https://github.com/dineshba/tf-summarize.git", :tag => "v#{version}"
  # sha256 is generated using: curl -sL https://github.com/dineshba/tf-summarize/archive/refs/tags/v0.3.3.tar.gz | shasum -a 256 | cut -d " " -f 1
  sha256 "a42249825500cacaced32f108bfd12161e27608d2d160aa95deb24a8f91e89d1"
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