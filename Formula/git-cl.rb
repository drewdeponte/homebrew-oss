class GitCl < Formula
  desc "Git Changelog management CLI extension for Git"
  homepage "https://github.com/uptech/git-cl"
  url "https://github.com/uptech/git-cl.git", :tag => "v2.0.0", :revision => "591d7c146631a4d4645fa5a4fb4d8e3eed3affae"
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
