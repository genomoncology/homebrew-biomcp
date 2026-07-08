class Biomcp < Formula
  desc "Biomedical Model Context Protocol command-line interface"
  homepage "https://biomcp.org"
  version "0.8.25"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/genomoncology/biomcp/releases/download/v0.8.25/biomcp-darwin-arm64.tar.gz"
      sha256 "c401bc1cb5bc2d0cc7e0884318e65250c6089b5e60d3ea1dfd93108bc05406fe"
    else
      url "https://github.com/genomoncology/biomcp/releases/download/v0.8.25/biomcp-darwin-x86_64.tar.gz"
      sha256 "39430e8e4844b239b6a701b9a9cc5910e688a3c089f4128284410de3e1ce60fe"
    end
  end

  def install
    bin.install "biomcp"
  end

  test do
    system "#{bin}/biomcp", "--version"
  end
end
