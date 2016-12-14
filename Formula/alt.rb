class Alt < Formula
  desc "command-line utility to find alternate file"
  homepage "https://github.com/uptech/alt"
  url "https://github.com/uptech/alt/releases/download/v2.1.0/alt-2.1.0-x86_64-apple-darwin"
  version "2.1.0"
  sha256 "9bbc088de8d74b3c2788163161958ef986f499ef13e8ec242f6eb5bec06d7da6"

  def install
    mv "alt-2.1.0-x86_64-apple-darwin", "alt"
    bin.install "alt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alt --version")
  end
end
