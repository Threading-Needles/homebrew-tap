class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.71"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.71/tndl-0.1.71-aarch64-apple-darwin.tar.gz"
      sha256 "f254fa2dbdd25cde41b635a48a2c3460340829a156534f1407a9e7f557621564"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.71/tndl-0.1.71-x86_64-apple-darwin.tar.gz"
      sha256 "0cb6ee42d255e6f571a313f68d9136546bac810c1ba9ed164b201d67c20a13cf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.71/tndl-0.1.71-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ac7048be6e488b3c14ae9eeeb432ece771b3d56078c705add9dde45b10375060"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.71/tndl-0.1.71-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3ca2054ba885d994c5ffa0364b5dc2a8fec4d0052a4c36b6dbeea9f3b14564c7"
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
