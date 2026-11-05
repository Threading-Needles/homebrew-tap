class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.13"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.13/tndl-0.1.13-aarch64-apple-darwin.tar.gz"
      sha256 "c2e8ef17705f92b4efe10137265705de1ad1545744d6c5d8ecb1cae36be52742"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.13/tndl-0.1.13-x86_64-apple-darwin.tar.gz"
      sha256 "a24338cbf6c89c6784c067919f30a8de12033a22b03fba38a7fa2c8b422a34c8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.13/tndl-0.1.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "098d72947c4ad6a4f6f1bbf4fe936af4aecb8ee3c5ffa69a89f3d5d91abaa9ed"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.13/tndl-0.1.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c414800d1e7ab4ab48ae3b3c7dc500d6afa5c70e65edaff03164fcaea9081fd4"
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
