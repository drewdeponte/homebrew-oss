class GitPs < Formula
  desc "Patch Stack workflow CLI extension for Git"
  homepage "https://github.com/uptech/git-ps"
  url "https://github.com/uptech/git-ps.git", :tag => "0.3.1", :revision => "37fd4490de30d02fe89f4d9cd930789831b6789f"
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
