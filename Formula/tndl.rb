class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.10"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.10/tndl-0.1.10-aarch64-apple-darwin.tar.gz"
      sha256 "c8738fa04f8ea2d9900b9faa365ace629f87e3eaa31fc04a0fe30e7be770d9cb"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.10/tndl-0.1.10-x86_64-apple-darwin.tar.gz"
      sha256 "10bc194843b1353d49513f6edd99f8d417f1f0550c20cf9ca46d7289c76c0d7b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.10/tndl-0.1.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2ab9ed7b6acdd9ca76b562415c85e996aae5a353a4eac2c425ddedb1e6c1f11e"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.10/tndl-0.1.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d4b760b18c953627cb4e32c1a0b6bff5e7facc27439fa3475dd67c97029cf8aa"
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
