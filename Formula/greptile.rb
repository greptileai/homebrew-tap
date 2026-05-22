# greptile.rb — Homebrew formula for the Greptile CLI.
# Lives at greptileai/homebrew-tap/Formula/greptile.rb.
# Updated by .github/workflows/cli-release.yml on every cli-v* tag.

class Greptile < Formula
  desc "Greptile code review from your terminal"
  homepage "https://greptile.com"
  url "https://github.com/greptileai/cli/releases/download/v3.0.0/greptile.js"
  sha256 "REPLACE_WITH_DIST_SHA256"
  version "3.0.0"
  license "MIT"

  depends_on "node"

  def install
    bin.install "greptile.js" => "greptile"
  end

  test do
    assert_match "Greptile", shell_output("#{bin}/greptile --help")
  end
end
