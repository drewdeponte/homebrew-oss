class Alt < Formula
  desc "command-line utility to find alternate file"
  homepage "https://github.com/uptech/alt"
  url "https://github.com/uptech/alt/archive/v3.2.0.tar.gz"
  version "3.2.0"
  sha256 "008d33911305de5359d8976d197618aa5302ac556f7082db84faf6554cfd9c56"
  head "https://github.com/uptech/alt.git"

  depends_on "rust" => :build

  bottle do
    # root_url "https://homebrew.bintray.com/bottles-oss"
    root_url "https://github.com/uptech/homebrew-oss/raw/master/Formula"
    cellar :any_skip_relocation
    sha256 "316ba6db772781d150abeee7bf7abb0ed8b2fd6faf19d1d01c0760f5f44268f4" => :catalina
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
