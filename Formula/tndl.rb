class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.4/tndl-0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "ddc6a39a694eda24bd40f5c34600d863b90674aa213db0d0f83ae8af2c5aa667"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.4/tndl-0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "d38e03e8ff7f142e1ac3625d54e092cacb6f5cebc6272681ae48cfcb19c7ffd0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.4/tndl-0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "16c4100d518d1ba0378e866d735caa07104b70c68cc91e64eb388aee2b7be3a1"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.4/tndl-0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "772add1d7d00a13541c99abd90a8851747e76c0fc924717106be46d4cb4c5076"
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
