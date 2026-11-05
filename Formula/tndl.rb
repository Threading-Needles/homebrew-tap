class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.14"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.14/tndl-0.1.14-aarch64-apple-darwin.tar.gz"
      sha256 "9b6de836ea6e916e8b6f6e14494f818ea1e0129c0523a2aed016e48e61abfe5b"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.14/tndl-0.1.14-x86_64-apple-darwin.tar.gz"
      sha256 "20ef7b82ccd72f006b525d851b62e551b6bfe621bae0e489cc61e1658589cf65"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.14/tndl-0.1.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d485d4329fd4488964a95a2ddc8176eba0ab69c779aac4a2b7e2224079953724"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.14/tndl-0.1.14-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a5f4a6e471bcd4d151246d2cb475a94293564d0cace07285f0471a416fb80fea"
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
