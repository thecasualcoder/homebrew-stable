class TerraformPlanSummary < Formula
  desc "A command-line utility to print the summary of the terraform plan"
  homepage "https://github.com/dineshba/terraform-plan-summary"
  license "The MIT License (MIT)"
  version "0.1.0"
  url "https://github.com/dineshba/terraform-plan-summary.git", :tag => "v#{version}"
  sha256 "41fa338b702320707c86fbd823af078ac499e0c58020d9a58c64edee86e94f40"

  depends_on "go" => :build

  def install
      ENV['TF_PLAN_SUMMARIZE_VERSION'] = "#{version}"
      system "make", "build"
      bin.install "tf-plan-summarize"
  end

  test do
    assert_match "Version: 0.1.0",
    shell_output("#{bin}/tf-plan-summarize -v")
  end
end