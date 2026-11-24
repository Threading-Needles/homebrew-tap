class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.66"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.66/tndl-0.1.66-aarch64-apple-darwin.tar.gz"
      sha256 "7bd8e0fc2ab4d778dda9be3b22887af8b776b400d3a0c479c0c0219aafe226a9"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.66/tndl-0.1.66-x86_64-apple-darwin.tar.gz"
      sha256 "88257ddac1eefd7807248ec3175b9d640005cf2a2be5cba5f9b2bf6dda39cb71"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.66/tndl-0.1.66-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a65faa0227de22a1af40d11fe1c212e8110810aa2dc42ddcf63a4f16f982e116"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.66/tndl-0.1.66-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e23aa0d58a1b98835362d1ab1eafa5a0f620213f42df7f6a6fd1002848a10419"
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
