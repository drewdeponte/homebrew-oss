class GitPsRs < Formula
  desc "Git Patch Stack workflow CLI"
  homepage "https://github.com/drewdeponte/git-ps-rs"
  url "https://github.com/drewdeponte/git-ps-rs.git", tag: "7.3.0", revision: "9af3855bf7978ef033e0670e3f0a0b879ee5e9fd"
  head "https://github.com/drewdeponte/git-ps-rs.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args

    # Completion scripts are generated in the crate's build
    # directory, which includes a fingerprint hash. Try to locate it first
    out_dir = Dir["target/release/build/gps-*/out"].first
    man1.install "#{out_dir}/gps-branch.1", "#{out_dir}/gps-fetch.1", "#{out_dir}/gps-checkout.1", "#{out_dir}/gps-help.1", "#{out_dir}/gps-integrate.1", "#{out_dir}/gps-isolate.1", "#{out_dir}/gps-list.1", "#{out_dir}/gps-pull.1", "#{out_dir}/gps-rebase.1", "#{out_dir}/gps-request-review.1", "#{out_dir}/gps-sha.1", "#{out_dir}/gps-show.1", "#{out_dir}/gps.1"
    bash_completion.install "#{out_dir}/gps.bash"
    zsh_completion.install "#{out_dir}/_gps"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gps --version")
  end
end
