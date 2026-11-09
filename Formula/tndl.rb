class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.21"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.21/tndl-0.1.21-aarch64-apple-darwin.tar.gz"
      sha256 "774f269a3ecc472f98a17cc6b2bd285300df4ef0fb1a24cda8f1c5daa3f43801"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.21/tndl-0.1.21-x86_64-apple-darwin.tar.gz"
      sha256 "69779475d587a25dd27c1a7beacf80b0c19e179e20ae6c598c6aa41df7a21e8d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.21/tndl-0.1.21-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c6f16b8207fe996665d164be1ebe7a488f9faf63829f369005279f66fc5e2176"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.21/tndl-0.1.21-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7049545ac3dcf2d86b40c6f683c6e19d55da9cb851609f635f90beba77d771ab"
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
