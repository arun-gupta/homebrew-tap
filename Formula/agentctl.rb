class Agentctl < Formula
  desc "CLI combining git worktrees and coding agents to tackle GitHub issues"
  homepage "https://github.com/arun-gupta/agentctl"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/arun-gupta/agentctl/releases/download/v#{version}/agentctl-darwin-arm64.tar.gz"
      sha256 "bb85c7cf83ebcfbb693f93adf09f0d1305de1bc562e810549e6bd448941037cb"
    end
    on_intel do
      url "https://github.com/arun-gupta/agentctl/releases/download/v#{version}/agentctl-darwin-amd64.tar.gz"
      sha256 "e22b8b7627b918c424790d7ff4a76630e568054ea6e8fc22f8c9b791691d5bd4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/arun-gupta/agentctl/releases/download/v#{version}/agentctl-linux-arm64.tar.gz"
      sha256 "9bd4fbc69fdd0092f7c6531480b3e7d948a9fd35e53ba3bd1e9b1bc455d7d42f"
    end
    on_intel do
      url "https://github.com/arun-gupta/agentctl/releases/download/v#{version}/agentctl-linux-amd64.tar.gz"
      sha256 "74e89cf72e7739dd2cdba09edb7aac7fafd6cd385593ade8f82093c6d1f1ca83"
    end
  end

  def install
    bin.install "agentctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentctl --version")
  end
end
