class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.9"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.9/tndl-0.1.9-aarch64-apple-darwin.tar.gz"
      sha256 "e0a73ae2af6dc258e6fee965fe1f86f34a79b15c3f81a5fe937e842aa867e285"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.9/tndl-0.1.9-x86_64-apple-darwin.tar.gz"
      sha256 "cc33438f1b2f77e5e8ef83a2f2b12eb4c7378ae00072a64264f4b07ea9e17668"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.9/tndl-0.1.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d2bdfe8b4314030da18ccbbf2052c161937a2fc7bc79616801004c6cab5bb61"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.9/tndl-0.1.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4214e7e591bc268e26f63cbe126e354247b60f8483db7316c845cc3fe51354c6"
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
