class GitTicketSummary < Formula
  desc "Git Ticket Summary generator CLI extension for Git"
  homepage "https://github.com/drewdeponte/git-ticket-summary"
  url "https://github.com/drewdeponte/git-ticket-summary.git", tag: "0.1.2", revision: "ceffd0875888db64f0b53b5421a333c1d12d5d88"
  head "https://github.com/drewdeponte/git-ticket-summary.git"

  def install
    bin.install "git-ticket-summary"
  end
end
