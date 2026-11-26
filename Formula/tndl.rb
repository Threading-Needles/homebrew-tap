class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.70"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.70/tndl-0.1.70-aarch64-apple-darwin.tar.gz"
      sha256 "e9c19329ed4125147a17e3550f3b15528323324fce01f0cffd53436f7a2f20e8"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.70/tndl-0.1.70-x86_64-apple-darwin.tar.gz"
      sha256 "6b86e2017bd35791196d9dd494f648c8f2c863045517ef4a041a86bb96cd81b1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.70/tndl-0.1.70-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "94ace9a2a9b7cc2cb0409e2c470a18a9666a18d87d5e4aebfaad24f24ed90f76"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.70/tndl-0.1.70-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ffe917087706beb5ed7bf822d1fb9bdd4b46bd9b42b714e6e73315b796be7fd"
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
