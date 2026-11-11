class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.30"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.30/tndl-0.1.30-aarch64-apple-darwin.tar.gz"
      sha256 "4df28e8678c963c71fb1cf62ca5898ad38fb2b32282452060fd67f2c6bfefebb"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.30/tndl-0.1.30-x86_64-apple-darwin.tar.gz"
      sha256 "1d604ad969d57a410e5e53b4e233977f3265cc0b4d6a1f158bad9236c3258239"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.30/tndl-0.1.30-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "64bbacc1b2d07031fc3d2da2c092aec743f50365b1da78f87071890b2bb8ed56"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.30/tndl-0.1.30-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cdfaa663f9e9b5e29e36b0b74746d9c51529009c5bd8d4624b590f179d0c8d52"
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
