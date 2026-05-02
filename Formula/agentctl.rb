class Agentctl < Formula
  desc "CLI combining git worktrees and coding agents to tackle GitHub issues"
  homepage "https://github.com/arun-gupta/agentctl"
  version "0.18.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/arun-gupta/agentctl/releases/download/v#{version}/agentctl-darwin-arm64.tar.gz"
      sha256 "cfe846a5c4844d00edd14b9175dfb81174eb0d256c2b49bc1c58aa5dca7d7b59"
    end
    on_intel do
      url "https://github.com/arun-gupta/agentctl/releases/download/v#{version}/agentctl-darwin-amd64.tar.gz"
      sha256 "dded58e1ff5f6668d06f405b4ba232fd491133c1feeb757e33d21f88a31bfecf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/arun-gupta/agentctl/releases/download/v#{version}/agentctl-linux-arm64.tar.gz"
      sha256 "2ade6b0a51cf8f33d10b90bbdd430e0c8d99ebd92df2e146769a23f3dccf698c"
    end
    on_intel do
      url "https://github.com/arun-gupta/agentctl/releases/download/v#{version}/agentctl-linux-amd64.tar.gz"
      sha256 "6e7e703284d4a97f46e780b23650dba260e9e5270897ef17c8ba262df273dc04"
    end
  end

  def install
    bin.install "agentctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentctl --version")
  end
end
