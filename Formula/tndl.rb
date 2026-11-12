class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.40"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.40/tndl-0.1.40-aarch64-apple-darwin.tar.gz"
      sha256 "d50ae3704afcda290f01d95f379a6b42df603f326fe371ca1c6b54d2d600d809"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.40/tndl-0.1.40-x86_64-apple-darwin.tar.gz"
      sha256 "25f4641e3e45ea76d68d7496a4a5938d2ec8dc7bc5947685f9d816de30b1f2cc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.40/tndl-0.1.40-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c4a0e983d145413f248a9d4ad5fc209e3010a81cf8a9ec99a21c7479539277a"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.40/tndl-0.1.40-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d8ae595e52e2b164b8ef666835f5d79a08ee99089d403c8912fef62aa4a17b7e"
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
