class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.27"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.27/tndl-0.1.27-aarch64-apple-darwin.tar.gz"
      sha256 "0b891ef48229dcadafbfdc2603d3c39b848613c2c94633afe41b25adf4bc2fdc"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.27/tndl-0.1.27-x86_64-apple-darwin.tar.gz"
      sha256 "716ff05140acbbdcd9fbd2c2487bb7a0ac1d62e5add490b3a640c7fc0cb15046"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.27/tndl-0.1.27-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d1b3004b8f5f4810ac56c47f414385b8b897008186c36d1374ee888d3b84041"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.27/tndl-0.1.27-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "795562abfd2070e9826b38bd2c0cce9500f2109237c772f65601a1428d7c907f"
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
