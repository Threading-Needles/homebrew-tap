class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.41"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.41/tndl-0.1.41-aarch64-apple-darwin.tar.gz"
      sha256 "3c91b2979f3b740c6a22a14c58043dea5dbb780a474b2b33a72afb75cebdeb58"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.41/tndl-0.1.41-x86_64-apple-darwin.tar.gz"
      sha256 "63dfc9f0913d02f38ef2704e58d16722ebb0f07bc22e10cbb30d4eff16a29b48"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.41/tndl-0.1.41-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eecd3a319ba4b916af6d3d3bd7c58a323aff013749fd20ffbb3d3d0b5bdc8e81"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.41/tndl-0.1.41-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ecbd3359a9064e728d4ad2627a78d951aa5f75fdf42c8ed9a39df7bf10dfe557"
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
