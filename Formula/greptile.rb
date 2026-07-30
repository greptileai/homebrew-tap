# greptile.rb — Homebrew formula for the Greptile CLI.

class Greptile < Formula
  desc "AI code review from your terminal"
  homepage "https://greptile.com"
  url "https://github.com/greptileai/cli/releases/download/v3.3.1/greptile.js"
  sha256 "def9649410d31cc15dfb7e4aef9fc2f11cd90deff9232caa499059aa1d6af3a7"
  license "MIT"

  depends_on "node"

  def install
    bin.install "greptile.js" => "greptile"
  end

  test do
    assert_match "Greptile", shell_output("#{bin}/greptile --help")
  end
end
