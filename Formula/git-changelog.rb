class GitChangelog < Formula
  desc "Git Changelog generation CLI extension for Git"
  homepage "https://github.com/uptech/git-changelog"
  url "https://github.com/uptech/git-changelog.git", :tag => "v1.1.0", :revision => "12828a57f8a8e71bcf18097227badf80b84d4951"
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
