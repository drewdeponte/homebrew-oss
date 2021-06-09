class GitPs < Formula
  desc "Patch Stack workflow CLI extension for Git"
  homepage "https://github.com/uptech/git-ps"
  url "https://github.com/uptech/git-ps.git", tag: "0.7.0", revision: "837a5c991e1e51006dd6c058923cf7c50e9a3b61"
  head "https://github.com/uptech/git-ps.git"

  bottle do
    root_url "https://github.com/uptech/homebrew-oss/raw/master/Formula"
    sha256 cellar: :any_skip_relocation, big_sur: "9003a4587ee2a4ed9f9ee54999e5763292f39a33943a8d72944f89039198c4a4"
    sha256 cellar: :any_skip_relocation, catalina: "9003a4587ee2a4ed9f9ee54999e5763292f39a33943a8d72944f89039198c4a4"
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
