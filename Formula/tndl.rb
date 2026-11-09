class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.23"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.23/tndl-0.1.23-aarch64-apple-darwin.tar.gz"
      sha256 "9fd27d343c6a8ffcb9c25cd84ea6e042228d6da38b0391bd6588a2d9ea3dfcf3"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.23/tndl-0.1.23-x86_64-apple-darwin.tar.gz"
      sha256 "248b92398b511f4d9529cb7667bbd83eaf398846a7f25b586c8cfea8d184852f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.23/tndl-0.1.23-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e07d645556045283b33cb842fa6ee523079dd5efab25958b5e1d62a487b38984"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.23/tndl-0.1.23-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ee28bfb65a27afec93fa275cf606519a29cb7cd6d37f1c7da3be5b0213b1a45b"
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
