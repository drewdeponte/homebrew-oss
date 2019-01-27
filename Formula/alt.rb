class Alt < Formula
  desc "command-line utility to find alternate file"
  homepage "https://github.com/uptech/alt"
  url "https://github.com/uptech/alt/archive/v3.1.0.tar.gz"
  version "3.1.0"
  sha256 "8e308dacd2fe6ff3b4a5721b79ed65b140ca8c04d0741506342534fa3664a6c5"
  head "https://github.com/uptech/alt.git"

  depends_on "rust" => :build

  bottle do
    root_url "https://github.com/uptech/homebrew-oss/raw/master/Formula"
    cellar :any_skip_relocation
    sha256 "a86c08a2fe61c3ae7ca4225a97cb8b7f31635e97407e082836f4cec8083b8116" => :mojave
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
