class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.42"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.42/tndl-0.1.42-aarch64-apple-darwin.tar.gz"
      sha256 "330c3a66670ff6f806b5222bf00d0888f1dca389f52cb950aea96d2f42d2cc98"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.42/tndl-0.1.42-x86_64-apple-darwin.tar.gz"
      sha256 "6fcf16f295ce6bfa8d4938a11ae16d6c1173ce0ddd718e67658677d89580f360"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.42/tndl-0.1.42-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dfc10ab5e46d58b100853bc5c934e1fc658a6a1855d56aa4eb76b2d1b33acc5c"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.42/tndl-0.1.42-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9787a8788c4f0bd765cf90659093e58afd1d68f5108c8fc1cbed2ea6470657c6"
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
