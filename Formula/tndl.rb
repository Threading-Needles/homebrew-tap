class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.36"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.36/tndl-0.1.36-aarch64-apple-darwin.tar.gz"
      sha256 "8f04ba7803ee0f168d21752c0de1ef3457fa4040b1fa5b07b3f73356e3cd9609"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.36/tndl-0.1.36-x86_64-apple-darwin.tar.gz"
      sha256 "1794bacbd15b415e512ce0a366cdeb369d0ee5ed179adb26ec82785d68552ace"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.36/tndl-0.1.36-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "041db5f0b2e3647889ae94ba5e3c40311b427ac774885b7c9a4378d69b61c480"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.36/tndl-0.1.36-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2a56b2e4a726d462a3ee229067c3bb7f58293464fa4ad979117c65d2d7ac5aba"
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
