class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.63"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.63/tndl-0.1.63-aarch64-apple-darwin.tar.gz"
      sha256 "cff25c5507c2e3b2533a187b919e7f63fa1c07ec8c47e1c08f606fe6b4332eee"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.63/tndl-0.1.63-x86_64-apple-darwin.tar.gz"
      sha256 "4b81758c983e5f9fabe6a9efb34d3f567f22284491cfc6a671a414acd3da29fb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.63/tndl-0.1.63-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd3dc546355fb6b708e44f8be4b2be147ee936a3ee0c8453b5539b61a2d46d42"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.63/tndl-0.1.63-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "01fcf244d20341017f4fa4aeaf283e87422ce12d189616127bd44c7162fee62b"
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
