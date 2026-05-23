# greptile.rb — Homebrew formula for the Greptile CLI.

class Greptile < Formula
  desc "AI code review from your terminal"
  homepage "https://greptile.com"
  url "https://github.com/greptileai/cli/releases/download/v3.0.4/greptile.js"
  version "3.0.4"
  sha256 "55a4cdcef0b577bc9388b24eca34a5aa0f5f439104e0c44fc8dbf9331a63fdad"
  license "MIT"

  depends_on "node"

  def install
    bin.install "greptile.js" => "greptile"
  end

  test do
    assert_match "Greptile", shell_output("#{bin}/greptile --help")
  end
end
