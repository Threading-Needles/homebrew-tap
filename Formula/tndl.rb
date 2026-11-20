class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.58"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.58/tndl-0.1.58-aarch64-apple-darwin.tar.gz"
      sha256 "094c08a4028416e71eb66a5f5ce874c4a12ba7d4ea4aa24c2846ed7f63376692"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.58/tndl-0.1.58-x86_64-apple-darwin.tar.gz"
      sha256 "0e5abb963a7c07a603f5186451183201938d16b4c0184ee31ecf7469c0660618"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.58/tndl-0.1.58-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ea17194f3ffe991ac43d02552fee49d0b8ca1216b4d7d78f2a5b0a905cfd2c6d"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.58/tndl-0.1.58-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d417c493294c25b080ca95f855301aaafda43dd367123eea7fa6b0d1fe990ab"
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
