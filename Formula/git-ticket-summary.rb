class GitTicketSummary < Formula
  desc "Git Ticket Summary generator CLI extension for Git"
  homepage "https://github.com/uptech/git-ticket-summary"
  url "https://github.com/uptech/git-ticket-summary.git", tag: "0.1.0", revision: "8ad8b5a4a97b64faca6c2653b3545c05276850d8"
  head "https://github.com/uptech/git-ticket-summary.git"

  def install
    bin.install "git-ticket-summary"
  end
end
