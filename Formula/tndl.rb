class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.20"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.20/tndl-0.1.20-aarch64-apple-darwin.tar.gz"
      sha256 "f88e9cb61aa7ee7978aa643ed336a62703834222b1ffb1d0cb05f579683c07b5"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.20/tndl-0.1.20-x86_64-apple-darwin.tar.gz"
      sha256 "317afa83eedd08fb6be73e77e01254655bb1b72d49c89498752f74006d0f5222"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.20/tndl-0.1.20-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1c005d36809b842719f9985d5f1ed84723c7287eca7bfe152dd5c2208043be0f"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.20/tndl-0.1.20-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b08fbbf7b5b08bcc440b9757c63a4338ae721bbe55e339df8be9e6049aba23af"
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
