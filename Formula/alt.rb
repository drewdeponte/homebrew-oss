class Alt < Formula
  desc "command-line utility to find alternate file"
  homepage "https://github.com/codebreakdown/alt"
  url "https://github.com/codebreakdown/alt/releases/download/v2.0.1/alt-2.0.1-x86_64-apple-darwin"
  version "2.0.1"
  sha256 "d472c7ee484c7f5f3320a55b5a73ef6b37599c7b90e0e5b90bfc8a25d36369b4"

  def install
    mv "alt-2.0.1-x86_64-apple-darwin", "alt"
    bin.install "alt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alt --version")
  end
end
