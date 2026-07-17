# greptile.rb — Homebrew formula for the Greptile CLI.

class Greptile < Formula
  desc "AI code review from your terminal"
  homepage "https://greptile.com"
  url "https://github.com/greptileai/cli/releases/download/v3.2.2/greptile.js"
  version "3.2.2"
  sha256 "8f8901df9e472dafd226b6b8c2e9154a6ea8f52372622579e8370749a6a37792"
  license "MIT"

  depends_on "node"

  def install
    bin.install "greptile.js" => "greptile"
  end

  test do
    assert_match "Greptile", shell_output("#{bin}/greptile --help")
  end
end
