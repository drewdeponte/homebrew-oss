class Alt < Formula
  desc "Command-line utility to find alternate files"
  homepage "https://github.com/uptech/alt"
  url "https://github.com/uptech/alt.git", tag: "v4.0.0", revision: "86ae6ca55db8f779867f907702363f5db39a1a34"
  head "https://github.com/uptech/alt.git"

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
