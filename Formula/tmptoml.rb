class TmpToml < Formula
  desc "Command-line utility to render Tera templates using a toml config file as the variable source."
  homepage "https://github.com/uptech/tmptoml"
  url "https://github.com/uptech/tmptoml.git", tag: "0.1.3", revision: "f4faf718dddc00b1e31dcb455fe0c28bca1fc574"
  version "0.1.3"
  head "https://github.com/uptech/tmptoml.git"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"

    bin.install "target/release/tmptoml"
    # man1.install "doc/tmptoml.1" # only in versions > 2.3.0
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tmptoml --version")
  end
end
