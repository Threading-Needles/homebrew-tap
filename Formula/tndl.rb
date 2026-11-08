class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.19"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.19/tndl-0.1.19-aarch64-apple-darwin.tar.gz"
      sha256 "ddc2fcc4f526509acf1cae099edc2e75b1b84d675dd1d4fe57e8007f5a36dfe8"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.19/tndl-0.1.19-x86_64-apple-darwin.tar.gz"
      sha256 "a1945ad4029c5f79bef3fd1322307cf8d4ec78a452aeab34cefac3d76deba119"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.19/tndl-0.1.19-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d9f03d727d7a31e28464cfa500086def109ec049384fb63a183c438b23d74c4"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.19/tndl-0.1.19-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "45077e723515436167fd9329326d9cfef102c11e65275bd658f1471f79b004b3"
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
