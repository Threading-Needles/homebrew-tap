class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.65"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.65/tndl-0.1.65-aarch64-apple-darwin.tar.gz"
      sha256 "6c709f6c51fdccf96eb1d089150bebff9d37c708f464a80beb1b7bc5fff928d6"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.65/tndl-0.1.65-x86_64-apple-darwin.tar.gz"
      sha256 "53b5958142807d99f907555a29d1489eb3f6a423f889ba18da5a3c856743b25f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.65/tndl-0.1.65-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "beced5b10e1c31b48ab2d23e8bf0dc6d40a9aee09e6a18f3ac2a5ca2b1b7fb49"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.65/tndl-0.1.65-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6c0bcb382750766ab6ad2a2bfe5d100789ebed0a00335bc25e28d3f2c1983750"
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
