class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.38"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.38/tndl-0.1.38-aarch64-apple-darwin.tar.gz"
      sha256 "452de7f1478338b1cc2fbaba674f9618d3c4f924a767f642de08d97e5431b01f"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.38/tndl-0.1.38-x86_64-apple-darwin.tar.gz"
      sha256 "8f9c7180113552bb45dd8b2b6cae244be7b80062c7b913d584b79dee7b809c87"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.38/tndl-0.1.38-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f759196b74ad314fae51127c0208a2e681a379e096ea5edd2e0e2a2d9b107c5d"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.38/tndl-0.1.38-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0a38456bc00c169182e611296d20a5b0793bf436f297b0718bd2150801bb5a97"
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
