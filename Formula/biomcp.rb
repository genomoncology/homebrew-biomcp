class Biomcp < Formula
  desc "Biomedical MCP CLI and knowledge server"
  homepage "https://biomcp.org"
  version "0.9.1"
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/genomoncology/biomcp/releases/download/v0.9.1/biomcp-darwin-x86_64.tar.gz"
      sha256 "cdbb7a0c4f778b0db31b8d136925dea70a6e37fac97a5546a3762e537d8d1e8a"
    else
      url "https://github.com/genomoncology/biomcp/releases/download/v0.9.1/biomcp-darwin-arm64.tar.gz"
      sha256 "12570a61df4872fb97ca929533fcb6c08e83d1ad5da0a419307b4e8d9b95a8ad"
    end
  end
  def install
    bin.install "biomcp"
  end
end
