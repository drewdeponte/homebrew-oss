class GitTicketSummary < Formula
  desc "Git Ticket Summary generator CLI extension for Git"
  homepage "https://github.com/uptech/git-ticket-summary"
  url "https://github.com/uptech/git-ticket-summary.git", tag: "0.1.1", revision: "1b5c8336b365d7a39fb3ca6cb93a0f1e33cef67f"
  head "https://github.com/uptech/git-ticket-summary.git"

  def install
    bin.install "git-ticket-summary"
  end
end
