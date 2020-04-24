class GitChangelog < Formula
  desc "Git Changelog generation CLI extension for Git"
  homepage "https://github.com/uptech/git-changelog"
  url "https://github.com/uptech/git-changelog.git", :tag => "v1.0.0", :revision => "3e27a81d0bb8f7a96f19a804a59f78bed94dee60"
  head "https://github.com/uptech/git-changelog.git"

  depends_on :xcode => ["10.13", :build]

  def install
    system "make", "build"
    bin.install ".build/release/git-changelog"
  end

  test do
    system "#{bin}/git-changelog --version"
  end
end
