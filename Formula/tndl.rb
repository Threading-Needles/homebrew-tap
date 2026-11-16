class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.47"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.47/tndl-0.1.47-aarch64-apple-darwin.tar.gz"
      sha256 "5f9bb3eb3a7712858735ff8b8c1ad51a4aec95eed48fc39f1d6d022c69bcc7af"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.47/tndl-0.1.47-x86_64-apple-darwin.tar.gz"
      sha256 "96f0fc5ef0ee6133f762e620536292d4f2b5c8424ee0ce625708049f7d2df47a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.47/tndl-0.1.47-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3ff1129a188d23258439bfc53d75b10c227c81dec58bdf7e1373f0179d89a80f"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.47/tndl-0.1.47-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e34e3568712d1f1caa126959f3724c83cb696b30796616e1401bc0fba5fb9941"
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
