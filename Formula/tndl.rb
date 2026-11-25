class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.67"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.67/tndl-0.1.67-aarch64-apple-darwin.tar.gz"
      sha256 "37a35f0e114660f72b44e78194c40e2d1fbff5963e907c5ac659245e4305b5f2"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.67/tndl-0.1.67-x86_64-apple-darwin.tar.gz"
      sha256 "05e271c9760dcccba7747d81382ced033fc3ac33814595abb7b04f99d6535ab9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.67/tndl-0.1.67-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "10da12620cf85e5f6de3786f7a991b21cba103c55924fbaf631f3c9a5ff13899"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.67/tndl-0.1.67-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ea73c55d3d30f0ea7ace39266f3e035d5566afd9820875d33b6f5559f6d43efd"
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
