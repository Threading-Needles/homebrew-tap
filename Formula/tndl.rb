class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.37"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.37/tndl-0.1.37-aarch64-apple-darwin.tar.gz"
      sha256 "5922994363d55f85c3c219b54539ebecfae3da9dbdd0b23e60b8f89aa56d6779"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.37/tndl-0.1.37-x86_64-apple-darwin.tar.gz"
      sha256 "bfbb886030a43f9766aab9417f1fe4ae99e1aacab15baf855791914134f46c39"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.37/tndl-0.1.37-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9dd21363d828faf27b830178f5debb342ba046eaa504fd4b661a5e77c9b458f"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.37/tndl-0.1.37-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6d634df21f8168685a4758dcf8bd79f95de893947df87bd6e650fdaf5f74c4ed"
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
