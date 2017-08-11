class Alt < Formula
  desc "command-line utility to find alternate file"
  homepage "https://github.com/uptech/alt"
  url "https://github.com/uptech/alt/archive/v2.4.0.tar.gz"
  version "2.4.0"
  sha256 "0d255058dc9b0c23d393bc0e450c5caa9c6e3b2ada31317df69f161149792c18"
  head "https://github.com/uptech/alt.git"

  depends_on "rust" => :build

  bottle do
    root_url "https://github.com/uptech/homebrew-oss/raw/master/Formula"
    sha256 "17be462e0f8157a55a091abbed2decf16ef701bd4e27276ca49f995a59f73402" => :sierra
  end

  def install
    system "cargo", "build", "--release"

    bin.install "target/release/alt"
    man1.install "doc/alt.1" # only in versions > 2.3.0
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alt --version")
  end
end
