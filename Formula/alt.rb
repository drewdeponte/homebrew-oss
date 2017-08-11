class Alt < Formula
  desc "command-line utility to find alternate file"
  homepage "https://github.com/uptech/alt"
  url "https://github.com/uptech/alt/archive/v2.3.0.tar.gz"
  version "2.3.0"
  sha256 "f6f4393a85f0fa0ecc9c65c2a7b0bafc2b5863c632c00c33239dd98ec05433d7"
  head "https://github.com/uptech/alt.git"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"

    bin.install "target/release/alt"
    # man1.install "doc/alt.1" # only in versions > 2.3.0
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alt --version")
  end
end
