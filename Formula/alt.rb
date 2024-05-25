class Alt < Formula
  desc "Command-line utility to find alternate files"
  homepage "https://github.com/drewdeponte/alt"
  url "https://github.com/drewdeponte/alt.git", tag: "v4.1.0", revision: "b075a2603ddd23fc96c2a54df55547c1723e9e86"
  head "https://github.com/drewdeponte/alt.git"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"

    bin.install "target/release/alt"
    man1.install "doc/alt.1" # only in versions > 2.3.0
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alt --version")
  end
end
