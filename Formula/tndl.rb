class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.15"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.15/tndl-0.1.15-aarch64-apple-darwin.tar.gz"
      sha256 "93b94a7926874b919605363d80e5301bcdd84ba18c2cf613c8d04d8bd24d18b4"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.15/tndl-0.1.15-x86_64-apple-darwin.tar.gz"
      sha256 "35891d69721ccb6ed78cb68a299f3d9a6ff791bc1c8e8061b99e2a22eacaf048"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.15/tndl-0.1.15-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6bde56682449ce98d816ea72f815b94564c040252b3f2103fa112e3997f5f051"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.15/tndl-0.1.15-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "49cb4ae91d414a5c645d02e96b3f5c23a5195cdf93aadc1d7683028fa0d4ed53"
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
