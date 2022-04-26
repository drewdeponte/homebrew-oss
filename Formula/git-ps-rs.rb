class GitPsRs < Formula
  desc "Git Patch Stack workflow CLI"
  homepage "https://github.com/uptech/git-ps-rs"
  # url "https://github.com/uptech/git-ps-rs.git", tag: "3.2.0", revision: "584ae9e48c5413e73af865e3799a90688655d23f"
  # head "https://github.com/uptech/git-ps-rs.git"

  bottle do
    root_url "https://github.com/uptech/homebrew-oss/raw/master/Formula"
    rebuild 1
    sha256 cellar: :any, monterey: "3d57b6362d96a15def0380eca34899fb9832d086bdabe7cef9f5b305c60de728"
    sha256 cellar: :any, arm64_monterey: "5bc6c428fc7c6b558435df53bcddbded6359e35b18d638099b4000b91df5bdda"
  end

  # depends_on "rust" => :build
  # depends_on "gpgme"

  # def install
  #   system "cargo", "install", *std_cargo_args

  #   # Completion scripts and manpage are generated in the crate's build
  #   # directory, which includes a fingerprint hash. Try to locate it first
  #   out_dir = Dir["target/release/build/gps-*/out"].first
  #   # man1.install "#{out_dir}/gps.1"
  #   bash_completion.install "#{out_dir}/gps.bash"
  #   zsh_completion.install "#{out_dir}/_gps"
  # end

  test do
    assert_match version.to_s, shell_output("#{bin}/gps --version")
  end
end
