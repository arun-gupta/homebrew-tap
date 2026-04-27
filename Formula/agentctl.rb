class Agentctl < Formula
  desc "CLI combining git worktrees and coding agents to tackle GitHub issues"
  homepage "https://github.com/arun-gupta/agentctl"
  version "0.8.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/arun-gupta/agentctl/releases/download/v#{version}/agentctl-darwin-arm64.tar.gz"
      sha256 "4fda3ac06f114905b45009a3bd2eac9d7ecf0a366424e95703a3e52125821624"
    end
    on_intel do
      url "https://github.com/arun-gupta/agentctl/releases/download/v#{version}/agentctl-darwin-amd64.tar.gz"
      sha256 "8172891b468ba90e4d6ad2f20bcf4da10a27afe10f42ef2af30d92e47d1b689c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/arun-gupta/agentctl/releases/download/v#{version}/agentctl-linux-arm64.tar.gz"
      sha256 "1e790960c0e8b32c480318a3754f730e8b2339e0b470089b0d58014551fb29b1"
    end
    on_intel do
      url "https://github.com/arun-gupta/agentctl/releases/download/v#{version}/agentctl-linux-amd64.tar.gz"
      sha256 "a59a1dbc64e95fc733ceb9ca61f6e828fa5dffb640447b4b54a2a1e588149b56"
    end
  end

  def install
    bin.install "agentctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentctl --version")
  end
end
