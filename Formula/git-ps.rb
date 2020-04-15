class GitPs < Formula
  desc "Patch Stack workflow CLI extension for Git"
  homepage "https://github.com/uptech/git-ps"
  url "https://github.com/uptech/git-ps.git", :tag => "0.3.0", :revision => "cb90fe9c255e60dd5fffce19b3eb50ef2f8f5981"
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
