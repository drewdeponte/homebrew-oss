class Alt < Formula
  desc "command-line utility to find alternate file"
  homepage "https://github.com/uptech/alt"
  url "https://github.com/uptech/alt/releases/download/v2.3.0/alt-2.3.0-x86_64-apple-darwin"
  version "2.3.0"
  sha256 "255049848f8da5cfb387f80b63fb264f0028a8ce1b8035ae659cc3e3499581eb"

  def install
    mv "alt-2.3.0-x86_64-apple-darwin", "alt"
    bin.install "alt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alt --version")
  end
end
