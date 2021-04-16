class GitCl < Formula
  desc "Git Changelog management CLI extension for Git"
  homepage "https://github.com/uptech/git-cl"
  url "https://github.com/uptech/git-cl.git", tag: "v3.3.2", revision: "1fc02e9a3e0a4ce47c95284ed7d2f598e12a5547"
  head "https://github.com/uptech/git-cl.git"

  depends_on xcode: ["10.13", :build]

  def install
    system "make", "build"
    bin.install ".build/release/git-cl"
  end

  test do
    system "#{bin}/git-cl", "--version"
  end
end
