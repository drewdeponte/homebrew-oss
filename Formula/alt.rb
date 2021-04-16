class Alt < Formula
  desc "Command-line utility to find alternate file"
  homepage "https://github.com/uptech/alt"
  url "https://github.com/uptech/alt/archive/v3.3.0.tar.gz"
  version "3.3.0"
  sha256 "d543d102165bd4f74a60d259fb292028ab111b1051b1403842019db351601a78"
  head "https://github.com/uptech/alt.git"

  bottle do
    # root_url "https://homebrew.bintray.com/bottles-oss"
    root_url "https://github.com/uptech/homebrew-oss/raw/master/Formula"
    rebuild 1
    sha256 cellar: :any_skip_relocation, catalina: "33084423ae8a9b5d19544f7eef12a6ceca1e95eee568366ccb5f1a208a7d5710"
  end

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
