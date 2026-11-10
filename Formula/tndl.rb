class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.28"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.28/tndl-0.1.28-aarch64-apple-darwin.tar.gz"
      sha256 "0133859cfbfb51f384d5ff2c91368dd04eeaf59178f6cf01d01c07a9c58405c7"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.28/tndl-0.1.28-x86_64-apple-darwin.tar.gz"
      sha256 "797fa5fcde55beb839450bd06b82672e7b64f9c5f3c35833138683218e519f7c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.28/tndl-0.1.28-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5111fe705ceae840a8e79eafe1d8b36a957398016a97b72d361d0c52c61ea235"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.28/tndl-0.1.28-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6f57480ba483485f25be00db8d8d11ffae09acd01a6a58d21bea9222785de7b0"
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
