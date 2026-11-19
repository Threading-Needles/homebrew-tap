class Tndl < Formula
  desc "Threading Needles platform CLI and MCP bridge"
  homepage "https://tndl.ai"
  version "0.1.54"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.54/tndl-0.1.54-aarch64-apple-darwin.tar.gz"
      sha256 "9efcb13067ea56d95797c925c39c6ffa48061cb46a9ba55b60c2b40ab8eb1ead"
    end
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.54/tndl-0.1.54-x86_64-apple-darwin.tar.gz"
      sha256 "5c5d3ea0fc9928b63dd4594993d7f8b129ff1d8ba2f38eea25035bddbf67926c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.54/tndl-0.1.54-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d9e3575309d0de4ed0ec18120780dc53cf3833246ae4527d56ac8fe0ecaf0938"
    end
    on_arm do
      url "https://github.com/Threading-Needles/homebrew-tap/releases/download/tndl-v0.1.54/tndl-0.1.54-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9ec9555e030e0784bc02bb5597d7788484e4d438fab93dfbb3497498389f5ec5"
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
