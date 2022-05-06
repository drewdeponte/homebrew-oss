class GitPsRs < Formula
  desc "Git Patch Stack workflow CLI"
  homepage "https://github.com/uptech/git-ps-rs"
  url "https://github.com/uptech/git-ps-rs.git", tag: "4.0.2", revision: "273c798f4368cb308f126266f139feca24c842f9"
  head "https://github.com/uptech/git-ps-rs.git"

  depends_on "rust" => :build
  depends_on "gpgme"

  def install
    system "cargo", "install", *std_cargo_args

    # Completion scripts and manpage are generated in the crate's build
    # directory, which includes a fingerprint hash. Try to locate it first
    out_dir = Dir["target/release/build/gps-*/out"].first
    # man1.install "#{out_dir}/gps.1"
    bash_completion.install "#{out_dir}/gps.bash"
    zsh_completion.install "#{out_dir}/_gps"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gps --version")
  end
end
