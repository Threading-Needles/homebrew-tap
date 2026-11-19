class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.55"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.55/tndl-0.1.55-aarch64-apple-darwin.tar.gz"
      sha256 "68ca66fa1122a558708e7dfe381a923d1873e016522953df8e3d9cc14df4bc38"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.55/tndl-0.1.55-x86_64-apple-darwin.tar.gz"
      sha256 "fd62bccfb9de64bdbcd534c03118f95b0967d4ff74e7c07bc1cdba85e0f7d8e6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.55/tndl-0.1.55-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3f3d220be12e4403723090e67f584c13ab55091e67b9675594b47600d09ff57"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.55/tndl-0.1.55-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8192e478f65b74a9a89054175bfe93731eda55bfd64ec5734041cba94c39f4e1"
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
