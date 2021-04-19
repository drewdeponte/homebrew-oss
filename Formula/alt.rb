class Alt < Formula
  desc "Command-line utility to find alternate file"
  homepage "https://github.com/uptech/alt"
  url "https://github.com/uptech/alt/archive/v3.4.0.tar.gz"
  version "3.4.0"
  sha256 "8a12c1bc4c60c7312b9181cfa78c7673628a9f4398ed4c917fe56a1bc17e57e1"
  head "https://github.com/uptech/alt.git"

  bottle do
    # root_url "https://homebrew.bintray.com/bottles-oss"
    root_url "https://github.com/uptech/homebrew-oss/raw/master/Formula"
    rebuild 1
    sha256 cellar: :any_skip_relocation, catalina: "60fea07c7562f910b0376c661517642f99cbdc8e430231d375c348c09613c3e9"
    sha256 cellar: :any_skip_relocation, big_sur: "60fea07c7562f910b0376c661517642f99cbdc8e430231d375c348c09613c3e9"
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
