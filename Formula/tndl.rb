class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.69"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.69/tndl-0.1.69-aarch64-apple-darwin.tar.gz"
      sha256 "25f32a2d9dbc99ef19d47a560bd9b0c986cee0006af49a36ef18c50ed06c5289"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.69/tndl-0.1.69-x86_64-apple-darwin.tar.gz"
      sha256 "314ca7dfc91834337b1bf9067a68659a8cfef3752671611a9209776b3393c852"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.69/tndl-0.1.69-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "86754d51673dd0fe578c74ec44f3c504f36d75fea3d8ffeeb91173167cf4265b"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.69/tndl-0.1.69-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "67450b06bc2fa4ff4def01f5e8d9709434a34206bbc3abd0822fc21df03e4b03"
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
