class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.50"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.50/tndl-0.1.50-aarch64-apple-darwin.tar.gz"
      sha256 "5aa6c081133a67aac4360f6a57c2b589be0e03a8935b892fcdca1ccd2a4fb97c"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.50/tndl-0.1.50-x86_64-apple-darwin.tar.gz"
      sha256 "2bc5d5e74459e6409cc01ee928f58d3a10368258818c6b4af871d3a07a3a2302"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.50/tndl-0.1.50-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3e52bc74b22718aaad467444dc08b87ed02f656c236b4d7ca5c5aa4f0b168fac"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.50/tndl-0.1.50-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5768f9f84ab3b0902e8fe84dcab0c75755ecbfd581fb46ae269956f7994dea4f"
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
