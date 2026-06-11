# greptile.rb — Homebrew formula for the Greptile CLI.

class Greptile < Formula
  desc "AI code review from your terminal"
  homepage "https://greptile.com"
  url "https://github.com/greptileai/cli/releases/download/v3.1.0/greptile.js"
  version "3.1.0"
  sha256 "96334bef01e601b90e1f31e33d3077597b61ced2da2ef364f7cea41bbbfaedb9"
  license "MIT"

  depends_on "node"

  def install
    bin.install "greptile.js" => "greptile"
  end

  test do
    assert_match "Greptile", shell_output("#{bin}/greptile --help")
  end
end
