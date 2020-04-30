class GitCl < Formula
  desc "Git Changelog management CLI extension for Git"
  homepage "https://github.com/uptech/git-cl"
  url "https://github.com/uptech/git-cl.git", :tag => "v3.1.0", :revision => "4d2f418984a165318d087c8c5489bf10f701dc1c"
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
