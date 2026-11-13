class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.44"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.44/tndl-0.1.44-aarch64-apple-darwin.tar.gz"
      sha256 "48bccf6efb6649685e6881c70563bbef80d926ade4bc9492aee597b66070ba33"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.44/tndl-0.1.44-x86_64-apple-darwin.tar.gz"
      sha256 "b73c360072714442127a3888b15c74742ada3dcbab01931974b40ee0722a4806"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.44/tndl-0.1.44-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "246d204b5f7763f428aa7a164891354366ba374b2d08377cc9c5d2656d3bc3d4"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.44/tndl-0.1.44-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "834e41fe82d75b00e7d39dd03f372027bc302c2022fc0ce2647f6e4427b8734a"
    end
  end

  def install
    bin.install "tndl"
    generate_completions_from_executable(bin/"tndl", "completions")
  end

  test do
    assert_equal "tndl #{version}", shell_output("#{bin}/tndl --version").strip
    assert_match "catalogue", shell_output("#{bin}/tndl --help")
  end
end
