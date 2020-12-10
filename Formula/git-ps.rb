class GitPs < Formula
  desc "Patch Stack workflow CLI extension for Git"
  homepage "https://github.com/uptech/git-ps"
  url "https://github.com/uptech/git-ps.git", :tag => "0.5.0", :revision => "99b8fad74be4b05e7cce37b9eebea07c227043bd"
  head "https://github.com/uptech/git-ps.git"

  depends_on :xcode => ["10.13", :build]

  bottle do
    root_url "https://github.com/uptech/homebrew-oss/raw/master/Formula"
    cellar :any_skip_relocation
    sha256 "659c07e364fb098e4b5de3f901e9e60c5075c8caa23a2717cb1c6aff03f5bbb2" => :catalina
  end

  def install
    system "make", "build"
    bin.install ".build/release/git-ps"
  end

  test do
    system "#{bin}/git-ps --version"
  end
end
