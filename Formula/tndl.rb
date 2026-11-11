class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.32"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.32/tndl-0.1.32-aarch64-apple-darwin.tar.gz"
      sha256 "99c2002122714bf3dd446f62b408027f95c691043d21cbe13a16a85d3f976374"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.32/tndl-0.1.32-x86_64-apple-darwin.tar.gz"
      sha256 "36c42f627d785e7147221afd487a45b5937b0bed894721bf0933e2e511c57f55"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.32/tndl-0.1.32-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3d240bbe00ef21b1b56fb5f2b0da107bdda4e3858991957f7cd8d29e6beab647"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.32/tndl-0.1.32-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ccc90d02bff92d60002c5956bf43a2e4881bc16594454fbe92d1c56de0fc63a9"
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
