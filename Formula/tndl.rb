class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.17"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.17/tndl-0.1.17-aarch64-apple-darwin.tar.gz"
      sha256 "a35174470b4e2ce805c9084085f9c9712c394512a0e965bfcdcaa7c89426948a"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.17/tndl-0.1.17-x86_64-apple-darwin.tar.gz"
      sha256 "a4d67c28c3a85d76f2e067158d8aaebc3ac7bd5701c6aa7db77c7edd08906f61"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.17/tndl-0.1.17-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "481e488102fab5ac837ebbb28a73e8063f6aed8f90a3dcfea01e9450a804aee2"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.17/tndl-0.1.17-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "974c7f225be423d35044e6400a3bc99017f5b0cfdfc8bef90ad508457025680b"
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
