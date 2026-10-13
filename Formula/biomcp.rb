class Biomcp < Formula
  desc "Biomedical MCP CLI and knowledge server"
  homepage "https://biomcp.org"
  version "0.9.2"
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/genomoncology/biomcp/releases/download/v0.9.2/biomcp-darwin-x86_64.tar.gz"
      sha256 "d97daaa9f642aaecf2e168920fcd3af00072c51805fe1bdbc8a0665d8f8de14e"
    else
      url "https://github.com/genomoncology/biomcp/releases/download/v0.9.2/biomcp-darwin-arm64.tar.gz"
      sha256 "eea1c79bb713e9c312bbf73126c6ca1fd2ec93f8bf2da8b64633582eb5be492d"
    end
  end
  def install
    bin.install "biomcp"
  end
end
