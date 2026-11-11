class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.35"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.35/tndl-0.1.35-aarch64-apple-darwin.tar.gz"
      sha256 "ed2734fa71b25a5fb9cbedee2c355e558118ab6092ad96493ce9fd2defc21876"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.35/tndl-0.1.35-x86_64-apple-darwin.tar.gz"
      sha256 "c7d93096711b364ed6926df8bd69f71128179bdb0242c1384951e039b1135546"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.35/tndl-0.1.35-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2317892d59915f58401411794f015bc9075b84f92417784e00b0a0200f157714"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.35/tndl-0.1.35-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8664a7ad5c20df9d193faec6d44fa7b17776a634c220b75c5232ffdb5d9ce16c"
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
