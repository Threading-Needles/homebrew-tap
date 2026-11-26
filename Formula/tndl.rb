class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.72"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.72/tndl-0.1.72-aarch64-apple-darwin.tar.gz"
      sha256 "05a5fe70bf2d52a9a1b22b509c105976cbfc12138314049f4886275bfd17d6c6"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.72/tndl-0.1.72-x86_64-apple-darwin.tar.gz"
      sha256 "e54e248699dcd644ec0d259312ca851c969ce6470906704f192ae260e5253587"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.72/tndl-0.1.72-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "02b533beb7f038b42091d6fb7308b42f051a1f31598ed11e0edf0cd37c5b0227"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.72/tndl-0.1.72-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "499df30022dccae5b0fc994b8d3d76b77f52e17ef966af8292a9838e4f9f1408"
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
