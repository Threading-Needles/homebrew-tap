class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.22"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.22/tndl-0.1.22-aarch64-apple-darwin.tar.gz"
      sha256 "31839dc8ed99327bb4a63d0987690c77919c4f0ce0ebc446da75d5657adb7117"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.22/tndl-0.1.22-x86_64-apple-darwin.tar.gz"
      sha256 "4685b893755d7eabb9312a3a1601d6cead56c2ad1bd44295e6e225d37f0e8079"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.22/tndl-0.1.22-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b9f9f3af7a526f73352b40ae28967841ade580e9ff137132ba9fcfe991fe81e"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.22/tndl-0.1.22-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "12973feeab6fdc84d102aa7045c73409134cca7c73624e7b8d76b7423346d649"
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
