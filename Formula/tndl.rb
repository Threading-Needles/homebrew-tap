class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.53"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.53/tndl-0.1.53-aarch64-apple-darwin.tar.gz"
      sha256 "b8d96b6020a2319d43fe3dd6ae18dbd5e14012ea1f18f427ca5ff4abb43306d6"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.53/tndl-0.1.53-x86_64-apple-darwin.tar.gz"
      sha256 "d6001b4e349353928961f688fb0308fcb68be23c77598bfd2b9cccce9e109e61"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.53/tndl-0.1.53-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fa99355233703e8775a3244416e18cb05f3eeba11eac24be860ceaf797e08583"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.53/tndl-0.1.53-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f6f9483b080be8acb00f11181e68502beb5c03125443ce6b9dbce74f8bf49628"
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
