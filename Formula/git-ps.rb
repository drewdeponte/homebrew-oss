class GitPs < Formula
  desc "Patch Stack workflow CLI extension for Git"
  homepage "https://github.com/uptech/git-ps"
  url "https://github.com/uptech/git-ps.git", tag: "1.0.0", revision: "641e9190e5dcd480bf6e3289b5b1a7b270edfe0b"
  head "https://github.com/uptech/git-ps.git"

  bottle do
    root_url "https://github.com/uptech/homebrew-oss/raw/master/Formula"
    sha256 cellar: :any_skip_relocation, big_sur: "0758f73b1e503a695a92dc9dad83eb6574e0b3ec6e181bbea6cf971fa4221efa"
    sha256 cellar: :any_skip_relocation, catalina: "0758f73b1e503a695a92dc9dad83eb6574e0b3ec6e181bbea6cf971fa4221efa"
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
