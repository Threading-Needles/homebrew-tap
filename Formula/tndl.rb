class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.43"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.43/tndl-0.1.43-aarch64-apple-darwin.tar.gz"
      sha256 "44f790f0843aaf9139127b1c5341079ad2eecaf9b8f86e1be7c2abbe6cfead37"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.43/tndl-0.1.43-x86_64-apple-darwin.tar.gz"
      sha256 "e07e88aecd74ea15a31d78eb792b0fd564cf0fab437d85f6145caaa22a7fc88d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.43/tndl-0.1.43-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2ea07aa07b0d0cb310bab98231b7bbc3843664aa2ca93f66d1177e8a13ee2505"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.43/tndl-0.1.43-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "01a123f12aa2acb18d12a5a49d12e696177df035d2799bdbc4831475543d427b"
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
