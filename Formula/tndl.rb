class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.33"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.33/tndl-0.1.33-aarch64-apple-darwin.tar.gz"
      sha256 "aab5b1212bb9346a443cdd34b37c100cbf525d7e164547d9a1aaabfd9b91f585"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.33/tndl-0.1.33-x86_64-apple-darwin.tar.gz"
      sha256 "ca5e5049df2f1d14b4f9435f22765caf0e78657fb07ff56c74cdc4a9fafc7e41"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.33/tndl-0.1.33-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "abefa29c8baaebeb6431396efe241c4081d2bf46affd4e58bef8fc6c307cdb47"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.33/tndl-0.1.33-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d292b974445712e3513a2918cea816a86339738a87f62fde165befd1bd9e5ea9"
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
