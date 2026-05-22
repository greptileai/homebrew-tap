# greptile.rb — Homebrew formula for the Greptile CLI.

class Greptile < Formula
  desc "Greptile code review from your terminal"
  homepage "https://greptile.com"
  url "https://github.com/greptileai/cli/releases/download/v3.0.2/greptile.js"
  sha256 "10dc1ce00f9d51d8045ae4fbef3019e974044631f3fd1b4e2809157913154d32"
  version "3.0.2"
  license "MIT"

  depends_on "node"

  def install
    bin.install "greptile.js" => "greptile"
  end

  test do
    assert_match "Greptile", shell_output("#{bin}/greptile --help")
  end
end
