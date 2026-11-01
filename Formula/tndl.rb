class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.5/tndl-0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "f85e385a84aab647fe1349ee8c1c48cc0d14a3e56ea2daa7cc45994b8ea3ed15"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.5/tndl-0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "af57d6e4e630d946fa394c8863c432800d16093245ad160c85538d77ff798e55"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.5/tndl-0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d90838171facd871cb6b9daddade75dc859270bbd0efa7632d968d2b1d974ed"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.5/tndl-0.1.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d2595bf80ba762d76b6704e613ed3d2fbfd615e7548855561e04990089ef11a9"
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
