class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.48"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.48/tndl-0.1.48-aarch64-apple-darwin.tar.gz"
      sha256 "62da5e45750fcc4d33989203018bb97e10ea87029ad46a722d9f20d0251333e8"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.48/tndl-0.1.48-x86_64-apple-darwin.tar.gz"
      sha256 "f98893840c5f4fed1b84e361fb5f202ce060586190556db0c420422caf0fb19a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.48/tndl-0.1.48-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d39a9a2c0b106fd8d13f4a7997ce1048bf382781fb1e9ae1cd4b0412d0825e1"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.48/tndl-0.1.48-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c85953fcb6896da73dfb558390906bfd4d627e8e1ccb2f1cb243cd3bf56cb170"
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
