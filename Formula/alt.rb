class Alt < Formula
  desc "command-line utility to find alternate file"
  homepage "https://github.com/uptech/alt"
  url "https://github.com/uptech/alt/releases/download/v2.2.0/alt-2.2.0-x86_64-apple-darwin"
  version "2.2.0"
  sha256 "f59eb4bc8854d9e15cabc437914afa1483648f01f0e05128f8b1bf2bc71a1cf8"

  def install
    mv "alt-2.2.0-x86_64-apple-darwin", "alt"
    bin.install "alt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alt --version")
  end
end
