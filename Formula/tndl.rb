class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.2/tndl-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "3de512e16d52f4ba2ae6e1612f52ed9db6d95c34857bad4e0032b9aa18731309"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.2/tndl-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "3162bc1ba73c9383af7c7d2454125684a762a607dcdd2d37022f85e288864548"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.2/tndl-0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4932cad528ddb25385e36283540ad0002dded377aaf7b39b4f678b1cf5410a9d"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.2/tndl-0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "180ff06a47d64a68d0c6ddb960918e4b242c7195295fb568d35391c2f45d0d5a"
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
