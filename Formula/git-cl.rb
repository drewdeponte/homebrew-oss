class GitCl < Formula
  desc "Git Changelog management CLI extension for Git"
  homepage "https://github.com/uptech/git-cl"
  url "https://github.com/uptech/git-cl.git", :tag => "v3.1.1", :revision => "13e87891f3bcf7ba929004cefff80db6c37fd471"
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
