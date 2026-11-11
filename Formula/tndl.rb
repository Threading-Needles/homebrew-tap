class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.31"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.31/tndl-0.1.31-aarch64-apple-darwin.tar.gz"
      sha256 "21772d81a285f6210c48fe446148e5c27b6c0a9bf514dfc56ca89b386a981871"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.31/tndl-0.1.31-x86_64-apple-darwin.tar.gz"
      sha256 "0e6b73bdac083f5994a1a79da03675f61efb7273b49327509939ce0ce34f1a04"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.31/tndl-0.1.31-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a3e243f33607f2a499dfac02d0b21800e1737730117d0e3276589bb45cf68f34"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.31/tndl-0.1.31-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "961b6d868986b1640436a3d41d31f822c158fec6c8b91eeeb2c0668739c12124"
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
