class GitPsRs < Formula
  desc "Git Patch Stack workflow CLI"
  homepage "https://github.com/uptech/git-ps-rs"
  url "https://github.com/uptech/git-ps-rs.git", tag: "5.3.0", revision: "7fb61f464ca5039524e97b4296aab3d99c03729c"
  head "https://github.com/uptech/git-ps-rs.git"

  depends_on "rust" => :build
  depends_on "gpgme"

  def install
    system "cargo", "install", *std_cargo_args

    # Completion scripts are generated in the crate's build
    # directory, which includes a fingerprint hash. Try to locate it first
    out_dir = Dir["target/release/build/gps-*/out"].first
    man1.install "doc/gps-add.1"
    # exmaple of installing multiple man pages
    # man1.install "doc/gps-add.1", "doc/gps.1" 
    bash_completion.install "#{out_dir}/gps.bash"
    zsh_completion.install "#{out_dir}/_gps"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gps --version")
  end
end
