class GitPs < Formula
  desc "Patch Stack workflow CLI extension for Git"
  homepage "https://github.com/uptech/git-ps"
  url "https://github.com/uptech/git-ps.git", tag: "1.0.0", revision: "641e9190e5dcd480bf6e3289b5b1a7b270edfe0b"
  head "https://github.com/uptech/git-ps.git"

  bottle do
    root_url "https://github.com/uptech/homebrew-oss/raw/master/Formula"
    sha256 cellar: :any_skip_relocation, big_sur: "19e706c3a505a692ae4e7d3ac3d66b68ac56b2455fe1eef37a0531a60dbe9abb"
    sha256 cellar: :any_skip_relocation, catalina: "19e706c3a505a692ae4e7d3ac3d66b68ac56b2455fe1eef37a0531a60dbe9abb"
  end

  depends_on xcode: ["10.13", :build]

  def install
    system "make", "build"
    bin.install ".build/release/git-ps"
  end

  test do
    system "#{bin}/git-ps", "--version"
  end
end
