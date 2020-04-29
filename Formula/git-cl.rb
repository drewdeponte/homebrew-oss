class GitCl < Formula
  desc "Git Changelog management CLI extension for Git"
  homepage "https://github.com/uptech/git-cl"
  url "https://github.com/uptech/git-cl.git", :tag => "v3.0.0", :revision => "d6d4c124e74a2e6fcb0d8f09b84818e6261f9077"
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
