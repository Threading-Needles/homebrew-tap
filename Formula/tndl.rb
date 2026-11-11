class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.34"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.34/tndl-0.1.34-aarch64-apple-darwin.tar.gz"
      sha256 "b28e98a7a2e519cab209c043a2e7c524f0f783e3f056fc2207052b86f4c3f255"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.34/tndl-0.1.34-x86_64-apple-darwin.tar.gz"
      sha256 "c8c15806f0d0a9328ba0632092cb14460b27c2470f8720f17940f617c4d1f0bf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.34/tndl-0.1.34-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e8e96ab6b17b3f40ae39d618a988012c4f2cd35ba27a67e69a5fe0b258c14fd8"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.34/tndl-0.1.34-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6288d346c6e7f9964bea5f6738c235e09742605a0fab6db4bdbedd43686a9031"
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
