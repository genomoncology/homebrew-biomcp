class Biomcp < Formula
  desc "Biomedical MCP CLI and knowledge server"
  homepage "https://biomcp.org"
  version "0.9.3"
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/genomoncology/biomcp/releases/download/v0.9.3/biomcp-darwin-x86_64.tar.gz"
      sha256 "9a6d6511565a2e24ab46e8c8a37df0fb9e62ed4be837c5e691dfe3548c6db094"
    else
      url "https://github.com/genomoncology/biomcp/releases/download/v0.9.3/biomcp-darwin-arm64.tar.gz"
      sha256 "e637062c18c6692f3ec49c5847e69b29f6feee7f7909345970bd504d72174994"
    end
  end
  def install
    bin.install "biomcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/biomcp --version")
  end
end
