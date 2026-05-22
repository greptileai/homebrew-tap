# greptile.rb — Homebrew formula for the Greptile CLI.

class Greptile < Formula
  desc "Greptile code review from your terminal"
  homepage "https://greptile.com"
  url "https://github.com/greptileai/cli/releases/download/v3.0.1/greptile.js"
  sha256 "7e9661ee1d3f21155cf1c683891902f9851e18bff5e2caec5a62e191f203dc1b"
  version "3.0.1"
  license "MIT"

  depends_on "node"

  def install
    bin.install "greptile.js" => "greptile"
  end

  test do
    assert_match "Greptile", shell_output("#{bin}/greptile --help")
  end
end
