class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.25"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.25/tndl-0.1.25-aarch64-apple-darwin.tar.gz"
      sha256 "51de059e2744c98c123de31b0172ae5308ca620ea82696cc0b295de1f086c587"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.25/tndl-0.1.25-x86_64-apple-darwin.tar.gz"
      sha256 "1cd8bbdb3c5082883684f9c82631eb8f2390af447064dd0dbf6863091ee08441"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.25/tndl-0.1.25-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a8c4ee200d4b68c365fd71fde4524fc6abf1de64ddcff95498a254eb234cffa"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.25/tndl-0.1.25-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b11759393f7a257fc5dd53b5f99f18c9a7bb6ac11925e8604e5ee558c880c46b"
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
