class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.8"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.8/tndl-0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "84b41e0aa495aef745ac4fcaf2b7fb6d2004957c3da47e4ae09c4fedc7d6b391"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.8/tndl-0.1.8-x86_64-apple-darwin.tar.gz"
      sha256 "c2a27d46ac03a1fdc149cb3c00f8da78099c05ff1e08ad01904e88a3d7683b42"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.8/tndl-0.1.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "049c264850557ee04937075e8652932dfd4bc49a1c3204141e7b64bccf87b45b"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.8/tndl-0.1.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e8e2c1e9a1f111291d423019703cdf1047ec7447b5cd84bf92bd4fb531705841"
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
