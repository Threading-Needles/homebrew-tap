class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.0/tndl-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "dd7802f60a54dca7e97343e457d9fe39703883f4499626d1c1f5ebcab519e190"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.0/tndl-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "7975aed770f493161699a7ceeded23aaef76e60d45b2faf4e063334b2e159a37"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.0/tndl-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fa1be94f597322ad10431a799cbb6f92e6e03cb97a9c26e9b5d9efe6561b5cc0"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.0/tndl-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ddcb8c6f5ca344767c446f2563208188f0fbfd617c7a4b97e898eb79f38162ce"
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
