class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.29"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.29/tndl-0.1.29-aarch64-apple-darwin.tar.gz"
      sha256 "9be10df77d458f5a09585195853febb13233e23846f1c770541cb86eb156e71a"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.29/tndl-0.1.29-x86_64-apple-darwin.tar.gz"
      sha256 "fda6974251bff10bf18eaf44aa3e43f8774005db69089a93782f6afa92d53edf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.29/tndl-0.1.29-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd63a9d46982c7a0cff5fa79ce28dfec170025e1d422c136745c59b01fa49a44"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.29/tndl-0.1.29-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "54f7698dc7c538108bde972354be1b1370a7188aae0969de29f323075b8df3df"
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
