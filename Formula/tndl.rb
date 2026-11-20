class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.59"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.59/tndl-0.1.59-aarch64-apple-darwin.tar.gz"
      sha256 "47cc9f253f4cc1e636c22a8c808a76f7d94c36ef3574637628276b412bd3ae97"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.59/tndl-0.1.59-x86_64-apple-darwin.tar.gz"
      sha256 "7ff110e9f0b84bb52ebaea766e53a656fff3d7b947c9f627f15fcd1c240c86e6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.59/tndl-0.1.59-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "07f892323379b58cce70b9b02daabec065cf47fc4cb60ed44284573ffeec9337"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.59/tndl-0.1.59-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cb0b01827ba95b3838a7e4f29be4eb836d90d1b34d0095d6d004efb090231869"
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
