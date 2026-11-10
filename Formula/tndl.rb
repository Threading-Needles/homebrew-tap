class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.26"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.26/tndl-0.1.26-aarch64-apple-darwin.tar.gz"
      sha256 "26bba6c3a853a3ca24068b94b90d38ceb2c1f2565339d2ee01d1c1dbbed7a473"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.26/tndl-0.1.26-x86_64-apple-darwin.tar.gz"
      sha256 "cc84913a7e02a52bf047692ef67a42c04881d8e190069a8c3cf2debbef9ab94e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.26/tndl-0.1.26-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "64bba83cd375bdc300e9d65066aa6e239d1ac351b8de0a267d8dc1c7cadc9ed2"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.26/tndl-0.1.26-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "461824530b751a20d73c418ceb33b355e8ed3f42b6a228094a4879a6c4201d4c"
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
