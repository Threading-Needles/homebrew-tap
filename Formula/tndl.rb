class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.11"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.11/tndl-0.1.11-aarch64-apple-darwin.tar.gz"
      sha256 "a1e7315fc34b8de297528390aa3f625f43886d466d8b486c51a99b117e389e35"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.11/tndl-0.1.11-x86_64-apple-darwin.tar.gz"
      sha256 "f3d0a22361bf7dffe42371080a07f68ee2a9a83b857f19228cb271f40d8b5381"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.11/tndl-0.1.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c5e0e11a372f2593974f0cac4869dab49d77b5a61cbaa22c2c2dd6c51448db14"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.11/tndl-0.1.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "86fe23852ed5fe0d052f1a6c5b16db4ee4edc10db64c03815dc97959f2627daa"
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
