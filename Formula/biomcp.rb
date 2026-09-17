class Biomcp < Formula
  desc "Biomedical MCP CLI and knowledge server"
  homepage "https://biomcp.org"
  version "0.9.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/genomoncology/biomcp/releases/download/v0.9.0/biomcp-darwin-x86_64.tar.gz"
      sha256 "6c9b014038d8418004962dc206cd554290b8642d4978ef2c76cda94116504094"
    else
      url "https://github.com/genomoncology/biomcp/releases/download/v0.9.0/biomcp-darwin-arm64.tar.gz"
      sha256 "67c92c2846b0b24449a0c533e80b12ac480683ee29fd30d293ad3abd3d575723"
    end
  end
  def install
    bin.install "biomcp"
  end
end
