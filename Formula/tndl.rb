class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.24"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.24/tndl-0.1.24-aarch64-apple-darwin.tar.gz"
      sha256 "6627c2542c27c24f49dd6e51289c85832815505d0595ce9174ff19c643f53931"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.24/tndl-0.1.24-x86_64-apple-darwin.tar.gz"
      sha256 "272ccf8099fec5cb4585cb4d3fcc2c5a8efad853f7f56461d1d1de4e2da3326a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.24/tndl-0.1.24-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e1522ea58f0fe5929f36d36c1dc0fd72776f4e0b7d99d991710f15655fd01d44"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.24/tndl-0.1.24-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "56bcf7841f489e37e4de98fc2c54f0f1c35b354eedcc60f043bb7a1ec9e5204c"
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
