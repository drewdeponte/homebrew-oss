class GitCl < Formula
  desc "Git Changelog management CLI extension for Git"
  homepage "https://github.com/uptech/git-cl"
  url "https://github.com/uptech/git-cl.git", :tag => "v3.2.0", :revision => "b547cc9cabc5e98d549cb8f7cd080762928f67da"
  head "https://github.com/uptech/git-cl.git"

  depends_on :xcode => ["10.13", :build]

  def install
    system "make", "build"
    bin.install ".build/release/git-cl"
  end

  test do
    system "#{bin}/git-cl --version"
  end
end
