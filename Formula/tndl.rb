class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.46"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.46/tndl-0.1.46-aarch64-apple-darwin.tar.gz"
      sha256 "79d0dde92e0c645d9644b7302ed5227e295cf84e67c550ec82031519b883df3d"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.46/tndl-0.1.46-x86_64-apple-darwin.tar.gz"
      sha256 "e262d05d5b62e14647e6bd0ec7f2ba4e89b0b95d9ab87c74617fb51e01aaa5ba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.46/tndl-0.1.46-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "09305decf20e6d2adb456d013ea5ac55ec25fb9360c9c8afb4fd6023b1b8e551"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.46/tndl-0.1.46-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cb6aa41b85bd3bc3fadf400156950a49be3ba6bd03c594c970359f6f0995fe68"
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
