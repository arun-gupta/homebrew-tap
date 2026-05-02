class Agentctl < Formula
  desc "CLI combining git worktrees and coding agents to tackle GitHub issues"
  homepage "https://github.com/arun-gupta/agentctl"
  version "0.19.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/arun-gupta/agentctl/releases/download/v#{version}/agentctl-darwin-arm64.tar.gz"
      sha256 "0ca1bd2cee18ba38e84b8044ce6f6d59b994eb8ad409d8093bd6e9ebc7d059cf"
    end
    on_intel do
      url "https://github.com/arun-gupta/agentctl/releases/download/v#{version}/agentctl-darwin-amd64.tar.gz"
      sha256 "e963cd2051de29eb14cd59aa585e8ff1cb0b6709faf9c86464b764d3fc7ce459"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/arun-gupta/agentctl/releases/download/v#{version}/agentctl-linux-arm64.tar.gz"
      sha256 "b342d01ebeaef82afa8a50b124d8b9598fc14f7ca08ce7a482708dc126c0b0da"
    end
    on_intel do
      url "https://github.com/arun-gupta/agentctl/releases/download/v#{version}/agentctl-linux-amd64.tar.gz"
      sha256 "9ddbcb8def3e1f02634ad2ba1a5c7018611e39dbf338ddf1773993349831f008"
    end
  end

  def install
    bin.install "agentctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentctl --version")
  end
end
