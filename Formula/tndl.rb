class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.56"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.56/tndl-0.1.56-aarch64-apple-darwin.tar.gz"
      sha256 "fbc8b6f41f2ae7a43a580003ca5c879ae8159b6f1aed4f90f3c92699d5602971"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.56/tndl-0.1.56-x86_64-apple-darwin.tar.gz"
      sha256 "fbcb1950f946a54f4ec631fd5c90ae9c65628327f8edcab2df44a4b19b08785e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.56/tndl-0.1.56-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a15281b89400fc51fb8b56ac71247f601b5fc2131016738c7d17715d8f71902b"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.56/tndl-0.1.56-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d4ee9798f99236e30df7953a620e5a83a2f117c68c0de89386730e2e49b5d55f"
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
