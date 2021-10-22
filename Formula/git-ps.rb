class GitPs < Formula
  desc "Patch Stack workflow CLI extension for Git"
  homepage "https://github.com/uptech/git-ps"
  url "https://github.com/uptech/git-ps.git", tag: "1.1.1", revision: "2c77c3f15aeb79178e5861b1fdd310dcf73024eb"
  head "https://github.com/uptech/git-ps.git"

  bottle do
    root_url "https://github.com/uptech/homebrew-oss/raw/master/Formula"
    sha256 cellar: :any_skip_relocation, big_sur: "04f2dd9247cd15238f75cf39b0b372ddfccc27e98675b2c387ffb2f9565aab21"
    sha256 cellar: :any_skip_relocation, catalina: "04f2dd9247cd15238f75cf39b0b372ddfccc27e98675b2c387ffb2f9565aab21"
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
