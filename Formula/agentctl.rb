class Agentctl < Formula
  desc "CLI combining git worktrees and coding agents to tackle GitHub issues"
  homepage "https://github.com/arun-gupta/agentctl"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/arun-gupta/agentctl/releases/download/v#{version}/agentctl-darwin-arm64.tar.gz"
      sha256 "181dbc022ca39c12f53c1489974e623b82eff10d4b2539f8b6bee18e2b540c69"
    end
    on_intel do
      url "https://github.com/arun-gupta/agentctl/releases/download/v#{version}/agentctl-darwin-amd64.tar.gz"
      sha256 "ca601255a9176edb5f16b9a57ee0514f5e4221b5e5186344eee7d7de5ffbd410"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/arun-gupta/agentctl/releases/download/v#{version}/agentctl-linux-arm64.tar.gz"
      sha256 "c2b10cfc338ac3fa976a029be896bd34e8a7828cdd7f0cfa338458c81d4c62c2"
    end
    on_intel do
      url "https://github.com/arun-gupta/agentctl/releases/download/v#{version}/agentctl-linux-amd64.tar.gz"
      sha256 "dffac3e44826e2d95e66683bb32d35bd7bc1a728d23fc0acd14fa748f3b16814"
    end
  end

  def install
    bin.install "agentctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentctl --version")
  end
end
