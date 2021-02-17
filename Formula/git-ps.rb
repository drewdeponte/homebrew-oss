class GitPs < Formula
  desc "Patch Stack workflow CLI extension for Git"
  homepage "https://github.com/uptech/git-ps"
  url "https://github.com/uptech/git-ps.git", :tag => "0.6.0", :revision => "c455a680fff7ad85f7f51e5fb18b3e0ec9f03a4f"
  head "https://github.com/uptech/git-ps.git"

  depends_on :xcode => ["10.13", :build]

  bottle do
    root_url "https://github.com/uptech/homebrew-oss/raw/master/Formula"
    cellar :any_skip_relocation
    sha256 "054d1cb6f68c317d7c92b23c61341627d2316eb723466f476baa82945fbb46f3" => :big_sur
    sha256 "054d1cb6f68c317d7c92b23c61341627d2316eb723466f476baa82945fbb46f3" => :catalina
  end

  def install
    system "make", "build"
    bin.install ".build/release/git-ps"
  end

  test do
    system "#{bin}/git-ps --version"
  end
end
