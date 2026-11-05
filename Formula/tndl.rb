class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.12"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.12/tndl-0.1.12-aarch64-apple-darwin.tar.gz"
      sha256 "d62c5379fac17adab1246cf09404e700abc03dda1adc63fc8724cb95ad36fbd6"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.12/tndl-0.1.12-x86_64-apple-darwin.tar.gz"
      sha256 "064eecb970e5a38a5d7de38c57a05c5854d524a394ebc931ed9c1a844eee4503"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.12/tndl-0.1.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b0c2f50001de2431edbf2cb25e6e7eb6787ab3f6799e9907f66fedd335f9db4"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.12/tndl-0.1.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0496ed8bad2b9a0cd9b1af6b5f50816fb1bc90ed822d3f1543c8d654928b78dc"
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
