class Alt < Formula
  desc "command-line utility to find alternate file"
  homepage "https://github.com/uptech/alt"
  url "https://github.com/uptech/alt/archive/v3.0.0.tar.gz"
  version "3.0.0"
  sha256 "00a4010243a0c1d0d01a707cddf5e1a2c547208e734a6c3943517e657ee96c37"
  head "https://github.com/uptech/alt.git"

  depends_on "rust" => :build

  bottle do
    root_url "https://github.com/uptech/homebrew-oss/raw/master/Formula"
    sha256 "8290c9132e64f60f75cf174735bd92b4fdddb86f43e55834413c53942f4c41ef" => :high_sierra
  end

  def install
    system "cargo", "build", "--release"

    bin.install "target/release/alt"
    man1.install "doc/alt.1" # only in versions > 2.3.0
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alt --version")
  end
end
