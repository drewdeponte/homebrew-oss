class GitPs < Formula
  desc "Patch Stack workflow CLI extension for Git"
  homepage "https://github.com/uptech/git-ps"
  url "https://github.com/uptech/git-ps.git", :tag => "0.3.3", :revision => "e2c1a87175dd9119175f99d717611a6feaa47876"
  head "https://github.com/uptech/git-ps.git"

  depends_on :xcode => ["10.13", :build]

  def install
    system "make", "build"
    bin.install ".build/release/git-ps"
  end

  test do
    system "#{bin}/git-ps --version"
  end
end
