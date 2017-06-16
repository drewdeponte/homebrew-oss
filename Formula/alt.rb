class Alt < Formula
  desc "command-line utility to find alternate file"
  homepage "https://github.com/uptech/alt"
  url "https://github.com/uptech/alt/releases/download/v2.1.1/alt-2.1.1-x86_64-apple-darwin"
  version "2.1.1"
  sha256 "5c783dbba97d85d73663eeac185dd15a5290c2267502dd7820817266d01e8802"

  def install
    mv "alt-2.1.1-x86_64-apple-darwin", "alt"
    bin.install "alt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alt --version")
  end
end
