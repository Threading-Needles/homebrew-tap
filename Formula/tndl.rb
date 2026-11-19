class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.51"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.51/tndl-0.1.51-aarch64-apple-darwin.tar.gz"
      sha256 "c3573a3a69c33a06e5b23d68fe919cb0307270380f9d0dcb69b5552403063513"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.51/tndl-0.1.51-x86_64-apple-darwin.tar.gz"
      sha256 "3d66ed685e614bbcd11f3ada65597b68ac60f520cf13d10dc471be23d81224ed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.51/tndl-0.1.51-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7855efec2e133dff2cf4611b6fa91452fb28efc7ad5f8fb7ad758e38c4d2f288"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.51/tndl-0.1.51-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e143b4dbc663664adccc867b51de9762c84b39221ef79e5d4089b091146e9d03"
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
