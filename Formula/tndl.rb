class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.52"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.52/tndl-0.1.52-aarch64-apple-darwin.tar.gz"
      sha256 "a8dc60ad9cc9e12407951adb0591d36fe36a1ff992466ce8d8d4e816380f00ad"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.52/tndl-0.1.52-x86_64-apple-darwin.tar.gz"
      sha256 "dad4587e36f98d77d211b8ff5e123a2bc76bd715ef96bc78a27b93c38957b926"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.52/tndl-0.1.52-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b3fc4e2716b321d245b2b3d335546afb1ebd6c01470d8e15977845a84d92ecdd"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.52/tndl-0.1.52-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d5abd5f059b3057563c468b9b46871d1265393e85dfb610730e93e003f474af9"
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
