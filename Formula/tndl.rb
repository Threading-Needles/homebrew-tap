class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.18"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.18/tndl-0.1.18-aarch64-apple-darwin.tar.gz"
      sha256 "b27aee429a1c41fcea324caa66be56f1062b3ff51cf059489a5f8de50dc42e01"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.18/tndl-0.1.18-x86_64-apple-darwin.tar.gz"
      sha256 "371ca4da32e2d86ac01d8926042e3063c0a9c5ca2e4eb3d790fbf57ffb47ba43"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.18/tndl-0.1.18-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3529689814bed57c219ac1f954e85f17bd745fd71bda25b6f365ccd42c7285e3"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.18/tndl-0.1.18-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aed262f9b5cd58f02889d2c0ab084f2d346ce5bb9ce14f00e30658aa5c0eee55"
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
