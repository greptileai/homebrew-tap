# greptile.rb — Homebrew formula for the Greptile CLI.

class Greptile < Formula
  desc "AI code review from your terminal"
  homepage "https://greptile.com"
  url "https://github.com/greptileai/cli/releases/download/v3.6.1/greptile.js"
  sha256 "7b1f2828f5fbb8c341c7a8b69f17876419a7729cec4e9f379ce634ce1923fe49"
  license "MIT"

  depends_on "node"

  def install
    bin.install "greptile.js" => "greptile"
  end

  test do
    assert_match "Greptile", shell_output("#{bin}/greptile --help")
  end
end
