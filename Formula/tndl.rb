class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.7/tndl-0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "3b0073820113e824a3126f1f1ce0dad34b7b7ae140f4d93789bea844decbc1c9"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.7/tndl-0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "4ec71b4d7b94be2e6cfb15b979b204abaaa843639f16fc0b23a08599766f71f3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.7/tndl-0.1.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fe08335fa81d5c01e1a90f133f42bf5c57265c1dd274bd3ad33a1cfc4e88a15c"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.7/tndl-0.1.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f1566b51ba8d37f29c21c51cccd88cbc857049a79ec3d92b4b2ea5d6b02c3ccd"
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
