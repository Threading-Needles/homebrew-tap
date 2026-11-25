class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.68"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.68/tndl-0.1.68-aarch64-apple-darwin.tar.gz"
      sha256 "16bc2b34f4eb2132ddea4a13772d034b400df06933871cd1c05db127fb08cd6c"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.68/tndl-0.1.68-x86_64-apple-darwin.tar.gz"
      sha256 "b139110b6aa26a79f4deaa03e1ceb21b8ef0dda42c1b74168d85daa0478adf57"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.68/tndl-0.1.68-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "45c77f8001475275334a8ce64567da222777dbf8daeaffe0947241c5c7c960d5"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.68/tndl-0.1.68-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5c78b3a5fa61521632c70147da72ff965d57247a6fdd1305f1296754ab08839c"
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
