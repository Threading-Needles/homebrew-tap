class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.45"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.45/tndl-0.1.45-aarch64-apple-darwin.tar.gz"
      sha256 "ae275901fba3ab9ab569af11d853576b868e1768d6f68fc64a3fe54031913bcb"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.45/tndl-0.1.45-x86_64-apple-darwin.tar.gz"
      sha256 "b73479235171dc0a7fc099e2dd74340e3a8a8d033471fcdb65325f534a6013ea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.45/tndl-0.1.45-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4cd6481f5daef6aadf787bcbb0e446910285216ccd20c954d0269da63e1318be"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.45/tndl-0.1.45-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5eb45c5c0a73ec1bbd1814c36d0a04a8d43443a24cf172c9f321fb917303d824"
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
