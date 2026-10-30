class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.1/tndl-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "9c6f1dd091c0e8937d81bac14bd5ecca9f74d2067c8772280fe229c242ce6cf4"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.1/tndl-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "7e0a632f89e0a0d4c9da53bc421956dbd1c07cf361378958d68698a8d3ba0057"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.1/tndl-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9135628e282ce7c1207e963203dca8e987c705abd36d9b2f56580a0e4045fda8"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.1/tndl-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "10c27cb7e3ba193f18058c18cab6ca70def3c6443e1c1534eb294ba0f8516d6a"
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
